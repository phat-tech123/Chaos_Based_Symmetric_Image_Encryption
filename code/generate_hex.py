import struct
import random

# Số lượng cần tạo
N = 4000
min_val = 1.5
max_val = 5000.0

with open("input.hex", "w") as f:
    for _ in range(N):
        # Sinh số thực ngẫu nhiên với phần thập phân 4 chữ số
        f_val = random.uniform(min_val, max_val)
        # Làm tròn 4 chữ số thập phân
        f_val = round(f_val, 4)

        # Chuyển sang IEEE-754 32-bit (big-endian) và hex
        ieee_hex = struct.pack('>f', f_val).hex().upper()
        f.write(ieee_hex + "\n")

print(f"✅ Đã tạo {N} số IEEE-754 (1.5 → 5000) với 4 chữ số thập phân, lưu vào input.hex")

