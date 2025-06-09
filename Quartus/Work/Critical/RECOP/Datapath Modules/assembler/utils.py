def int_to_bin(value: int, bit_length: int) -> str:
        if value >= 2**bit_length or value < 0:
            raise ValueError(f"Value {value} cannot be represented in {bit_length} bits.")
        return format(value, f'0{bit_length}b')

def bits_to_hex(bits, bit_length=None):
    if not all(b in '01' for b in bits):
        raise ValueError("Input must be a string of bits (0s and 1s only).")
    
    if bit_length:
        if bit_length < len(bits):
            raise ValueError("bit_length is smaller than the actual bit string length.")
        bits = bits.zfill(bit_length)
    else:
        bits = bits.zfill((len(bits) + 3) // 4 * 4)
    
    hex_string = hex(int(bits, 2))[2:].upper()

    hex_length = (len(bits) + 3) // 4
    hex_string = hex_string.zfill(hex_length)

    return hex_string
