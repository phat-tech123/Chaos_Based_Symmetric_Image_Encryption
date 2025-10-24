#include <stdio.h>
#include <math.h>


#define ITER 1000
#define ESP 1e-9
//////////////////////////// SUPPORT FUNCTIONS ////////////////////////////
double sawtooth(double x, double epsilon){
	int l = (int)floor((x / epsilon + 1.0) / 2.0);
	if(x > (2*l+1)*epsilon || x < (2*l-1)*epsilon) return NAN;

	return pow(-1.0, l) * (x - 2 * l * epsilon);
}

double find_max(double vector[3]) {
    double max = fabs(vector[0]);
    for (int i = 1; i < 3; i++) {
        if (fabs(vector[i]) > max)
            max = fabs(vector[i]);
    }
    return max;
}

// Trả về giá trị eigenvalue lớn nhất
double spectralRadius(double A[3][3]) {
    double init_vector[3] = {1, 1, 1};
    double out_vector[3] = {0, 0, 0};

    double prev = 0;
    for (int i = 0; i < ITER; i++) {
        out_vector[0] = A[0][0] * init_vector[0] + A[0][1] * init_vector[1] + A[0][2] * init_vector[2];
        out_vector[1] = A[1][0] * init_vector[0] + A[1][1] * init_vector[1] + A[1][2] * init_vector[2];
        out_vector[2] = A[2][0] * init_vector[0] + A[2][1] * init_vector[1] + A[2][2] * init_vector[2];

        double max = find_max(out_vector);

        init_vector[0] = out_vector[0] / max;
        init_vector[1] = out_vector[1] / max;
        init_vector[2] = out_vector[2] / max;

        if (fabs(max - prev) < ESP) {
            return max;  // trả luôn
        }
        prev = max;
    }
    return prev;  // nếu hết vòng vẫn trả
}

//////////////////////////// SUPPORT FUNCTIONS ////////////////////////////


// Chaotic PRNG
// A: 3x3 matrix (Stable Schur matrix)
// sample: number of samples to generate
// N: burn-in iterations (skip transient)
// eps: parameter of sawtooth function
// x0: initial state (3 values)
// seq_out: pointer to array [sample][3]
void chaotic_PRNG(double A[3][3], int sample, int N, double epsilon, double x0[3], double (*seq)[3]){
	//Eigenvalues & spectral radius
	double spectral_radius = spectralRadius(A);

	if(spectral_radius >= 1) {
		printf("Matrix A is not stable\n");
		return;
	}

	// compute inf norm 
	double norm_inf_manual = 0.0;
    	for (int i = 0; i < 3; i++) {
		double row_sum = 0.0;

		for (int j = 0; j < 3; j++) 	row_sum += fabs(A[i][j]);

		if (row_sum > norm_inf_manual) 	norm_inf_manual = row_sum;
	}

	// sigma + err
	double err = 0.1;
	double sigma = fmax(3 * norm_inf_manual, sqrt(norm_inf_manual + 1.0)+1.0) + err;
	//printf("%.10f\n", sigma);

	//init
	double x[3];
    	for (int i = 0; i < 3; i++) x[i] = x0[i];	

	int k = 0;
	for(int step = 0; step < N + sample; step++){
		double U[3];
		for(int i = 0; i < 3; i++){
			U[i] = sawtooth(sigma * x[i], epsilon);
		}

		// x_next = A*x + U
		double x_next[3] = {0,0,0};
		for(int i = 0; i < 3; i++){
			for(int j = 0; j < 3; j++){
				x_next[i] += A[i][j] * x[j];
			}
			x_next[i] += U[i];
		}

		// update
		for(int i = 0; i < 3; i++) x[i] = x_next[i];
		
		if(step >= N){  // N initial iterations
			for(int i = 0; i < 3; i++) seq[k][i] = x[i];
			k++;
		}
	}
}


// ------- Main -------
/*
int main() {
    double A[3][3] = {
        {0.0, 1.0/2, 1.0/20},
        {1.0/3, 0.0, 1.0/3},
        {1.0/20, 1.0/2, 0.0}
    };

    int sample = 2000;
    int N = 100;

    double seq1[sample][3];
    double seq2[sample][3];

    double x0_1[3] = {0.1, 0.01, 0.0};
    double x0_2[3] = {0.10000001, 0.01, 0.0};

    chaotic_PRNG(A, sample, N, 0.05, x0_1, seq1);
    chaotic_PRNG(A, sample, N, 0.05, x0_2, seq2);

    // Xuất file 1
    FILE *f1 = fopen("./../outputsFromC/output1.csv", "w");
    for (int i = 0; i < sample; i++) {
        fprintf(f1, "%f,%f,%f\n", seq1[i][0], seq1[i][1], seq1[i][2]);
    }
    fclose(f1);

    // Xuất file 2
    FILE *f2 = fopen("./../outputsFromC/output2.csv", "w");
    for (int i = 0; i < sample; i++) {
        fprintf(f2, "%f,%f,%f\n", seq2[i][0], seq2[i][1], seq2[i][2]);
    }
    fclose(f2);

    printf("----------------- DONE -------------------\n");
    return 0;
}
*/
