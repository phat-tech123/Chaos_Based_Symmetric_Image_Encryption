#include "PRNG.c"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int extract_digits(double x) {
	char buf[64];
	snprintf(buf, sizeof(buf), "%.10f", x);
	char *p = strchr(buf, '.');
	if (!p) return 0;
	p++;

	char digits[4];
	for (int i = 0; i < 3; i++) {
		if ((p + 2 + i) < buf + strlen(buf))
			digits[i] = p[2 + i]; 
		else
		    	digits[i] = '0';
	}
	digits[3] = '\0';
	return atoi(digits); 
}

void build_sbox(/* Chaotic system parameterss */ 	double A[3][3], int sample, int N, double epsilon, 
		/* Initial vector of state variables*/ 	double x0[3], 
		/* A S-box matrix of size nxm */ 	unsigned char sbox[256]){

	int j = 0; 	

    	//double (*seq)[3] = malloc(sample * sizeof(*seq));
	double (*seq)[3] = (double (*)[3]) malloc(sample * sizeof(*seq));

	chaotic_PRNG(A, sample, N, epsilon, x0, seq);

	int k = 0;
	int used[256];
 	memset(used, 0, sizeof(used));

	while(j < 256 && k < sample){
		int D1 = extract_digits(seq[k][0]);
		int D2 = extract_digits(seq[k][1]);
		int D3 = extract_digits(seq[k][2]);
		k++;

		int M1 = D1 % 256;
		int M2 = D2 % 256;
		int M3 = D3 % 256;

		int V = (M1 ^ M2 ^ M3);

		if(!used[V]){
			used[V] = 1;
			sbox[j++] = (unsigned char)V;
		}
	}

	free(seq);
}

// Lưu S-Box ra CSV
void save_sbox_csv(int *sbox, int len, const char *path) {
    FILE *f = fopen(path, "w");
    if (!f) {
        printf("Không mở được file %s\n", path);
        return;
    }
    for (int i = 0; i < 16; i++) {
        for (int j = 0; j < 16; j++) {
            int idx = i*16 + j;
            if (idx < len) fprintf(f, "%d", sbox[idx]);
            else fprintf(f, "0");
            if (j < 15) fprintf(f, ",");
        }
        fprintf(f, "\n");
    }
    fclose(f);
}

// In S-Box dạng 16x16 hex
void print_sbox(const unsigned char *sbox, int len) {
    printf("S-BOX (16x16):\n");
    for (int i = 0; i < 16; i++) {
        for (int j = 0; j < 16; j++) {
            int idx = i * 16 + j;
            if (idx < len)
                printf("%02X ", sbox[idx]);
            else
                printf(".. ");
        }
        printf("\n");
    }
}

// Sinh key từ S-Box (lấy 16 byte đầu)
void sbox_to_key(int *sbox, unsigned char *key, int key_size) {
    for (int i = 0; i < key_size; i++) {
        key[i] = (unsigned char)sbox[i];
    }
}

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


    return 0;
}

