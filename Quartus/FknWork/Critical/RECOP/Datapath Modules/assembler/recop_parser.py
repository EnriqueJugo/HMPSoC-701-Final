import os
import re
from instruction_table import instruction_table, addressing_modes
import utils

class ReCOPParser:
    def __init__(self, filename : str):
        self.filename = filename
        self.instructions = []
        self.labels = {}
        self.current_address = 0

    def parse(self):
        with open(self.filename, 'r', encoding='utf-8') as file:
            lines = file.readlines()

        self._parse_labels(lines)

        line_number = 0
        
        for line in lines:
            line_number += 1
            instruction = {"instruction": "", "args": [], "addr_mode" : ""}
            # Remove multiple white spaces
            line = re.sub(' +', ' ', line) 
            line = line.strip()

            # Remove empty lines
            if not line:
                continue
            if ";" in line:  # Ignore comments on same line
                line = line[0:line.find(";")]
                line = line.strip()


            tokens = [token.lower() for token in line.split(" ") if token]
            
            # Label
            num_labels = sum(":" in token for token in tokens)
            if num_labels == 1:
                # Store address of label
                tokens = tokens[1:]
            elif num_labels > 1:
                raise SyntaxError("There can only be one Label per line")
              
            # Check if it is an instruction  
            if any([t in instruction_table for t in tokens]):
                instruction["instruction"] = tokens[0].lower()

                # Check arguments
                for curr_arg in tokens[1:]:
                    # R(x) = Register #(x) = Immediate
                    instruction["args"].append(curr_arg.lower())
            elif len(tokens) > 1:
                raise SyntaxError(f"Invalid instruction: {tokens[0]} line({line_number})")
                    
            instruction["addr_mode"] = ("immediate" if any('#' in a for a in instruction["args"]) or any(l in self.labels for l in instruction["args"]) else
                                        "direct" if any('$' in a for a in instruction["args"]) else
                                        "register" if any('r' in a for a in instruction["args"]) else
                                        "inherent")
                                     
            

            #TODO: Check if ENDPROG and END

            self._parse_instruction(instruction)

        return self.instructions, self.labels
    
    def _parse_labels(self, lines : str):
        for line in lines:
            # Remove multiple white spaces
            line = re.sub(' +', ' ', line) 
            line = line.strip()

            # Remove empty lines
            if not line:
                continue
            if ";" in line:  # Ignore comments on same line
                line = line[0:line.find(";")]
                line = line.strip()
            tokens = [token.lower() for token in line.split(" ") if token]
            num_labels = sum(":" in token for token in tokens)
            if num_labels == 1:
                # Store address of label
                self.labels[tokens[0][:-1]] = self.current_address
                tokens = tokens[1:]
            elif num_labels > 1:
                raise SyntaxError("There can only be one Label per line")
            
            if any([t in instruction_table for t in tokens]):
                self.current_address += 1

        self.current_address = 0

    def _parse_instruction(self, instruction : dict):
        # instruction format
        # ---------------------------------------------
        # |AM(2)|OP(6)|Rz(4)|Rx(4)|ADDR/VAL/OTHERs(16)|
        # ---------------------------------------------

        if instruction["instruction"] not in instruction_table:
            return
            
        inst = instruction_table[instruction["instruction"]]
        
        # Inherent
        if len(instruction["args"]) == 0:
            inst = inst + '0' * 24
        
        # Register, Immediate, Direct
        else:
            count = 2
            for arg in instruction["args"]:
                # Register
                if arg.startswith("r"):
                    reg_num = int(arg[1:])
                    r_inst = {instruction["instruction"]}.intersection({"ssop", "ssvop", "jmp", "datacall", "datacall2", "lsip", "ler"})
                    if r_inst:
                        # Register on only Rz
                        if ("lsip" in r_inst or "ler" in r_inst):
                            inst = inst + utils.int_to_bin(reg_num, 4) + '0' * 4
                        elif ("datacall" in r_inst):
                            inst = inst + '0111' + utils.int_to_bin(reg_num, 4)
                        # Register on only Rx
                        else:
                            if instruction["addr_mode"] != "immediate" or "datacall2" in r_inst:
                              inst = inst  + '0' * 4 + utils.int_to_bin(reg_num, 4)
                    else:
                        inst = inst + utils.int_to_bin(reg_num, 4)
                    
                # Immediate
                elif arg.startswith("#"):
                    operand = int(arg[1:])
                    if(instruction["instruction"] == "datacall2"):
                        inst = inst + utils.int_to_bin(operand, 16)
                    else:
                        inst = inst + '0' * (4 * count)  + utils.int_to_bin(operand, 16)
                
                # Direct
                elif arg.startswith("$"):
                    operand = int(arg[1:])
                    inst = inst + '0' * (4 * count)  + utils.int_to_bin(operand, 16)

                # Immediate (Label)
                elif arg in self.labels:
                    label_addr = self.labels[arg]
                    inst = inst + '0' * (4 * count)  + utils.int_to_bin(label_addr, 16)
                    
                count = count - 1
        
        # Concat. address mode bits
        inst = addressing_modes[instruction["addr_mode"]] + inst
        
        # Add operand if register
        if(len(inst) != 32):
            inst = inst + '0' * 16
                
        self.instructions.append(utils.bits_to_hex(inst, 32))
        self.current_address += 1
        
    def to_mif(self, width=32, depth=1024):
        header = (
            f"WIDTH={width};\n"
            f"DEPTH={depth};\n\n"
            "ADDRESS_RADIX=HEX;\n"
            "DATA_RADIX=HEX;\n\n"
            "CONTENT BEGIN\n"
        )
        
        lines = [header]
        
        if len(self.instructions) < depth:
            lines.append(f"    [{len(self.instructions):03X}..{depth - 1:03X}] : 00000000;\n")

        for addr, inst in enumerate(self.instructions):
            if isinstance(inst, str) and all(c in "01" for c in inst):
                inst = f"{int(inst, 2):08X}"
            else:
                inst = f"{int(inst, 16):08X}"
            
            lines.append(f"    {addr:03X} : {inst};\n")

        lines.append("END;\n")

        with open(self.filename.rsplit(".", 1)[0] + ".mif", "w") as f:
            f.writelines(lines)