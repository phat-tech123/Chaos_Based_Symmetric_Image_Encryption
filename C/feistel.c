#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include "s_box_generation.c"

#define BLOCK_SIZE 32   	// 256 bit 
#define HALF (BLOCK_SIZE/2) 	// 16 byte
#define ROUNDS 5
#define KEY_SIZE 16
#define IMAGE_SIZE 65536 	//256x256 image

// AES S-box
/*
static const unsigned char sbox[256] = {
    0x63,0x7c,0x77,0x7b,0xf2,0x6b,0x6f,0xc5,0x30,0x01,0x67,0x2b,0xfe,0xd7,0xab,0x76,
    0xca,0x82,0xc9,0x7d,0xfa,0x59,0x47,0xf0,0xad,0xd4,0xa2,0xaf,0x9c,0xa4,0x72,0xc0,
    0xb7,0xfd,0x93,0x26,0x36,0x3f,0xf7,0xcc,0x34,0xa5,0xe5,0xf1,0x71,0xd8,0x31,0x15,
    0x04,0xc7,0x23,0xc3,0x18,0x96,0x05,0x9a,0x07,0x12,0x80,0xe2,0xeb,0x27,0xb2,0x75,
    0x09,0x83,0x2c,0x1a,0x1b,0x6e,0x5a,0xa0,0x52,0x3b,0xd6,0xb3,0x29,0xe3,0x2f,0x84,
    0x53,0xd1,0x00,0xed,0x20,0xfc,0xb1,0x5b,0x6a,0xcb,0xbe,0x39,0x4a,0x4c,0x58,0xcf,
    0xd0,0xef,0xaa,0xfb,0x43,0x4d,0x33,0x85,0x45,0xf9,0x02,0x7f,0x50,0x3c,0x9f,0xa8,
    0x51,0xa3,0x40,0x8f,0x92,0x9d,0x38,0xf5,0xbc,0xb6,0xda,0x21,0x10,0xff,0xf3,0xd2,
    0xcd,0x0c,0x13,0xec,0x5f,0x97,0x44,0x17,0xc4,0xa7,0x7e,0x3d,0x64,0x5d,0x19,0x73,
    0x60,0x81,0x4f,0xdc,0x22,0x2a,0x90,0x88,0x46,0xee,0xb8,0x14,0xde,0x5e,0x0b,0xdb,
    0xe0,0x32,0x3a,0x0a,0x49,0x06,0x24,0x5c,0xc2,0xd3,0xac,0x62,0x91,0x95,0xe4,0x79,
    0xe7,0xc8,0x37,0x6d,0x8d,0xd5,0x4e,0xa9,0x6c,0x56,0xf4,0xea,0x65,0x7a,0xae,0x08,
    0xba,0x78,0x25,0x2e,0x1c,0xa6,0xb4,0xc6,0xe8,0xdd,0x74,0x1f,0x4b,0xbd,0x8b,0x8a,
    0x70,0x3e,0xb5,0x66,0x48,0x03,0xf6,0x0e,0x61,0x35,0x57,0xb9,0x86,0xc1,0x1d,0x9e,
    0xe1,0xf8,0x98,0x11,0x69,0xd9,0x8e,0x94,0x9b,0x1e,0x87,0xe9,0xce,0x55,0x28,0xdf,
    0x8c,0xa1,0x89,0x0d,0xbf,0xe6,0x42,0x68,0x41,0x99,0x2d,0x0f,0xb0,0x54,0xbb,0x16
};
*/

unsigned char sbox[256];


// ======================= CÁC HÀM PHỤ =======================
void copy_bytes(unsigned char *dest, const unsigned char *src, int n) {
    for (int i = 0; i < n; i++) {
        dest[i] = src[i];
    }
}
static inline unsigned char xtime(unsigned char x) {
    return (x & 0x80) ? ((x << 1) ^ 0x1B) : (x << 1);
}

static inline unsigned char mul2(unsigned char x) {
    return xtime(x);
}

static inline unsigned char mul3(unsigned char x) {
    return xtime(x) ^ x;
}


// SubBytes
void SubBytes(unsigned char state[4][4]) {
    for (int r = 0; r < 4; r++)
        for (int c = 0; c < 4; c++)
            state[r][c] = sbox[state[r][c]];
}

// ShiftRows
void ShiftRows(unsigned char state[4][4]) {
    unsigned char tmp[4];
    // row1 left shift 1
    for (int c = 0; c < 4; c++) tmp[c] = state[1][(c+1)%4];
    for (int c = 0; c < 4; c++) state[1][c] = tmp[c];
    // row2 left shift 2
    for (int c = 0; c < 4; c++) tmp[c] = state[2][(c+2)%4];
    for (int c = 0; c < 4; c++) state[2][c] = tmp[c];
    // row3 left shift 3
    for (int c = 0; c < 4; c++) tmp[c] = state[3][(c+3)%4];
    for (int c = 0; c < 4; c++) state[3][c] = tmp[c];
}

// MixColumns
void MixColumns(unsigned char state[4][4]) {
    unsigned char t[4];
    for (int c = 0; c < 4; c++) {
        t[0] = mul2(state[0][c]) ^ mul3(state[1][c]) ^ state[2][c] ^ state[3][c];
        t[1] = state[0][c] ^ mul2(state[1][c]) ^ mul3(state[2][c]) ^ state[3][c];
        t[2] = state[0][c] ^ state[1][c] ^ mul2(state[2][c]) ^ mul3(state[3][c]);
        t[3] = mul3(state[0][c]) ^ state[1][c] ^ state[2][c] ^ mul2(state[3][c]);

        for (int r = 0; r < 4; r++) {
            state[r][c] = t[r];
        }
    }
}

// AddRoundKey
void AddRoundKey(unsigned char state[4][4], const unsigned char *roundKey) {
    for (int r = 0; r < 4; r++)
        for (int c = 0; c < 4; c++)
            state[r][c] ^= roundKey[r*4 + c];
}

// ======================= HÀM F =======================
void F(const unsigned char *in16, const unsigned char *roundKey16, unsigned char *out16) {
    unsigned char state[4][4];
    // map in16 to state row-wise
    for (int r = 0; r < 4; r++)
        for (int c = 0; c < 4; c++)
            state[r][c] = in16[r*4 + c];

    SubBytes(state);
    ShiftRows(state);
    MixColumns(state);
    AddRoundKey(state, roundKey16);

    for (int r = 0; r < 4; r++)
        for (int c = 0; c < 4; c++)
            out16[r*4 + c] = state[r][c];
}

// ======================= FEISTEL BLOCK =======================
void feistel_encrypt(unsigned char *input, unsigned char *output, unsigned char roundKeys[ROUNDS][KEY_SIZE]) {
    unsigned char L[BLOCK_SIZE/2], R[BLOCK_SIZE/2], temp[BLOCK_SIZE/2];
    copy_bytes(L, input, BLOCK_SIZE/2);
    copy_bytes(R, input + BLOCK_SIZE/2, BLOCK_SIZE/2);

    for (int i = 0; i < ROUNDS; i++) {
        copy_bytes(temp, R, BLOCK_SIZE/2);
        unsigned char F_out[BLOCK_SIZE/2];
        F(R, roundKeys[i], F_out);
        for (int j = 0; j < BLOCK_SIZE/2; j++) {
            R[j] = L[j] ^ F_out[j];
        }
        copy_bytes(L, temp, BLOCK_SIZE/2);
    }
    copy_bytes(output, L, BLOCK_SIZE/2);
    copy_bytes(output + BLOCK_SIZE/2, R, BLOCK_SIZE/2);
}

void feistel_decrypt(unsigned char *input, unsigned char *output, unsigned char roundKeys[ROUNDS][KEY_SIZE]) {
    unsigned char L[BLOCK_SIZE/2], R[BLOCK_SIZE/2], temp[BLOCK_SIZE/2];
    copy_bytes(L, input, BLOCK_SIZE/2);
    copy_bytes(R, input + BLOCK_SIZE/2, BLOCK_SIZE/2);

    for (int i = ROUNDS - 1; i >= 0; i--) {
        copy_bytes(temp, L, BLOCK_SIZE/2);
        unsigned char F_out[BLOCK_SIZE/2];
        F(L, roundKeys[i], F_out);
        for (int j = 0; j < BLOCK_SIZE/2; j++) {
            L[j] = R[j] ^ F_out[j];
        }
        copy_bytes(R, temp, BLOCK_SIZE/2);
    }
    copy_bytes(output, L, BLOCK_SIZE/2);
    copy_bytes(output + BLOCK_SIZE/2, R, BLOCK_SIZE/2);
}

// ======================= CBC MODE =======================
void feistel_encrypt_cbc(unsigned char *plaintext, unsigned char *ciphertext, int len,
                         unsigned char roundKeys[ROUNDS][KEY_SIZE], unsigned char *iv) {
    unsigned char block[BLOCK_SIZE];
    unsigned char prev_block[BLOCK_SIZE];
    copy_bytes(prev_block, iv, BLOCK_SIZE);

    for (int i = 0; i < len; i += BLOCK_SIZE) {
        for (int j = 0; j < BLOCK_SIZE; j++)
            block[j] = plaintext[i+j] ^ prev_block[j];
        feistel_encrypt(block, &ciphertext[i], roundKeys);
        copy_bytes(prev_block, &ciphertext[i], BLOCK_SIZE);
    }
}

void feistel_decrypt_cbc(unsigned char *ciphertext, unsigned char *plaintext, int len,
                         unsigned char roundKeys[ROUNDS][KEY_SIZE], unsigned char *iv) {
    unsigned char block[BLOCK_SIZE];
    unsigned char prev_block[BLOCK_SIZE];
    copy_bytes(prev_block, iv, BLOCK_SIZE);

    for (int i = 0; i < len; i += BLOCK_SIZE) {
        feistel_decrypt(&ciphertext[i], block, roundKeys);
        for (int j = 0; j < BLOCK_SIZE; j++)
            plaintext[i+j] = block[j] ^ prev_block[j];
        copy_bytes(prev_block, &ciphertext[i], BLOCK_SIZE);
    }
}

// ======================= HỖ TRỢ =======================
// Hàm tạo khóa con từ khóa chính void 
void generate_subkeys(unsigned char *main_key, unsigned char roundKeys[ROUNDS][KEY_SIZE]) {
    for (int i = 0; i < ROUNDS; i++) {
        for (int j = 0; j < KEY_SIZE; j++) {
            roundKeys[i][j] = sbox[ main_key[(j + i) % KEY_SIZE] ^ (i * 17 + j) ];
        }
    }
}
void print_block(unsigned char *block, int size) {
    for (int i = 0; i < size; i++) {
        printf("%02X ", block[i]);

        if ((i + 1) % 16 == 0) {
            printf("\n");
        }
    }

    if (size % 16 != 0) {
        printf("\n");
    }
}


void save_to_csv(const char *filename, unsigned char *data, int len, int row_len) {
    FILE *f = fopen(filename, "w");
    if (!f) {
        perror("Cannot open file");
        return;
    }

    for (int i = 0; i < len; i++) {
        fprintf(f, "%d", data[i]);
        if ((i + 1) % row_len == 0)
            fprintf(f, "\n");
        else
            fprintf(f, ",");
    }

    fclose(f);
}

// ======================= MAIN =======================
int main() {
    	double A[3][3] = {
        	{0.0, 1.0/2, 1.0/20},
        	{1.0/3, 0.0, 1.0/3},
        	{1.0/20, 1.0/2, 0.0}
    	};
    	int sample = 2000;
    	int N = 100;
    	double seq[sample][3];
    	double x0[3] = {0.1, 0.01, 0.0};

    	unsigned char sbox[256];
    	build_sbox(A, sample, N, 0.05, x0, sbox);

    	print_sbox(sbox, 256);


	//unsigned char plaintext[IMAGE_SIZE];
	unsigned char *plaintext = (unsigned char*) malloc(IMAGE_SIZE);
	if(!plaintext) { perror("malloc"); return 1; }

	FILE *f = fopen("image.csv", "r");
	if (!f) {
		perror("Cannot open CSV file");
		return 1;
	}

	for (int i = 0; i < IMAGE_SIZE; i++) {
		int val;
		if (fscanf(f, "%d,", &val) != 1) {
			fprintf(stderr, "Error reading CSV at index %d\n", i);
		    	fclose(f);
		    	return 1;
		}
		plaintext[i] = (unsigned char)val;
	    }
	fclose(f);
	
	/*
	printf("\n\n--------------  CHECK THE FIRST 16 PIXEL PLAINTEXT -----------------\n\n");
	for (int i = 0; i < 256; i++) {
        	printf("%02X ", plaintext[i]);
    	}
    	printf("\n");

    	return 0;
	*/

    	unsigned char main_key[KEY_SIZE] = {
        	0x2A, 0x7E, 0x15, 0x16, 0x28, 0xAE, 0xD2, 0xA6,
        	0xAB, 0xF7, 0x15, 0x88, 0x09, 0xCF, 0x4F, 0x3C
    	};

    	// sinh roundKeys (ở đây lặp lại main_key cho đơn giản)
	unsigned char roundKeys[ROUNDS][KEY_SIZE];
	generate_subkeys(main_key, roundKeys);

    	unsigned char ciphertext[IMAGE_SIZE];
    	unsigned char decrypted[IMAGE_SIZE];

	// IV ngẫu nhiên
	unsigned char iv[BLOCK_SIZE];
	srand(time(NULL));
	for (int i = 0; i < BLOCK_SIZE; i++) iv[i] = rand() % 256;

	printf("Main key:\n"); print_block(main_key, KEY_SIZE);
	printf("IV:\n"); print_block(iv, BLOCK_SIZE);

	feistel_encrypt_cbc(plaintext, ciphertext, IMAGE_SIZE, roundKeys, iv);
	save_to_csv("./../outputsFromC/ciphertext.csv", ciphertext, IMAGE_SIZE, 256);
	//printf("Ciphertext:\n"); print_block(ciphertext, 256);

	feistel_decrypt_cbc(ciphertext, decrypted, IMAGE_SIZE, roundKeys, iv);
	save_to_csv("./../outputsFromC/decrypted.csv", decrypted, IMAGE_SIZE, 256);
	//printf("Decrypted:\n"); print_block(decrypted, 256);
	

	// CHECK FINAL RESULT
	if (memcmp(plaintext, decrypted, IMAGE_SIZE) == 0) {
	printf("PASS: Decrypted == Plaintext\n");
	} else {
	printf("FAIL: Decrypted != Plaintext\n");
	}

	free(plaintext);
	return 0;

}
