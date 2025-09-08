from PRNG import chaotic_PRNG
import numpy as np

# Trích chữ số thập phân
def extract_digits(x, pos=[3,4,5]):
    s = f"{x:.10f}".replace("0.","")  # lấy 10 chữ số thập phân
    digits = "".join(s[p-1] for p in pos)  # pos tính từ 1
    return int(digits)

# Tạo S-Box (256 phần tử)
def build_sbox(seq, needed=256):
    sbox = []
    seen = set()
    for (x1, x2, x3) in seq:
        D1 = extract_digits(x1)
        D2 = extract_digits(x2)
        D3 = extract_digits(x3)
        M1, M2, M3 = D1 % 256, D2 % 256, D3 % 256
        V = (M1 ^ M2 ^ M3) % 256  # WRONG IN STEP 6
        #V = (M1 ^ M2 ^ M3) >> 1
        if V not in seen:
            seen.add(V)
            sbox.append(V)
        if len(sbox) == needed:
            break
    return sbox

# Lưu S-Box ra CSV
def save_sbox_csv(sbox, path="sbox_from_algorithm.csv"):
    mat = np.array(sbox).reshape(16,16)
    with open(path, "w", newline="") as f:
        writer = csv.writer(f)
        for row in mat:
            writer.writerow(row)
    return path

# In S-Box 16x16
def print_sbox(sbox):
    print("S-BOX (16x16):")
    for i in range(16):
        row = []
        for j in range(16):
            idx = 16*i + j
            if idx < len(sbox):
                row.append(f"{sbox[idx]:02X}")
            else:
                row.append("..")  
        print(" ".join(row))

# Sinh key từ S-Box
def sbox_to_key(sbox, key_size=16):
    key_bytes = bytes(sbox[:key_size])
    return key_bytes


if __name__ == "__main__":

    A = np.array([[0.0, 1/2, 1/20],
              [1/3, 0.0, 1/3],
              [1/20, 1/2, 0.0]], dtype=float)

    seq = chaotic_PRNG(A)
    sbox = build_sbox(seq)
    print_sbox(sbox)
