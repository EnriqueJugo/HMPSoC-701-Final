from recop_parser import ReCOPParser

import sys
from recop_parser import ReCOPParser

def main():
    # Check if the user provided a filename
    if len(sys.argv) != 2:
        print("Usage: python main.py <filename.asm>")
        return

    filename = sys.argv[1]

    try:
        parser = ReCOPParser(filename)
        instructions, labels = parser.parse()

        print("\n--- Machine Instructions ---")
        for i, inst in enumerate(instructions):
            print(f"{i:04}: {inst} -- {bin(int(inst, 16))[2:].zfill(32)} -- {int(bin(int(inst, 16))[2:].zfill(32)[-16:], 2)}")

        print("\n--- Labels ---")
        for label, address in labels.items():
            print(f"{label}: {address:04} -- {format(address, '04X')}")

    except FileNotFoundError:
        print(f"File not found: {filename}")
    except Exception as e:
        print(f"Error: {e}")
    
    try:  
        parser.to_mif(width=32, depth=1024)
    except:
        print("Error creating MIF file")
        
    print(f"Successfully created {parser.filename.rsplit('.', 1)[0] + '.mif'}")

if __name__ == "__main__":
    main()
