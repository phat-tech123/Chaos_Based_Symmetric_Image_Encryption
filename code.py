def check_duplicate_lines(file_path):
    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
        lines = [line.strip() for line in f if line.strip()]  # bỏ dòng trống

    duplicates = set()
    seen = set()

    for line in lines:
        if line in seen:
            duplicates.add(line)
        else:
            seen.add(line)

    if duplicates:
        print("⚠️ Có giá trị bị trùng:")
        for d in sorted(duplicates):
            print(d)
        print(f"\nTổng số giá trị trùng: {len(duplicates)}")
    else:
        print("✅ Không có giá trị nào bị trùng.")

# --- Gọi hàm ---
check_duplicate_lines("output.hex")

