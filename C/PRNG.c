#include <stdio.h>
#include <math.h>

#define EPS 1e-12
//////////////////////////// SUPPORT FUNCTIONS ////////////////////////////
double sawtooth(double x, double epsilon){
	int l = (int)floor((x / epsilon + 1.0) / 2.0);
	if(x > (2*l+1)*epsilon || x < (2*l-1)*epsilon) return NAN;

	return pow(-1.0, l) * (x - 2 * l * epsilon);
}

int solveCubic(double a, double b, double c, double roots[3]) {
    double Q = (a * a - 3.0 * b) / 9.0;
    double R = (2.0 * a * a * a - 9.0 * a * b + 27.0 * c) / 54.0;
    double D = R * R - Q * Q * Q;

    if (D < -EPS) {
        double phi = acos(R / sqrt(Q * Q * Q));
        double t = 2.0 * sqrt(Q);
        roots[0] = -t * cos(phi / 3.0) - a / 3.0;
        roots[1] = -t * cos((phi + 2.0 * M_PI) / 3.0) - a / 3.0;
        roots[2] = -t * cos((phi + 4.0 * M_PI) / 3.0) - a / 3.0;
        return 3;
    } else if (fabs(D) <= EPS) {
        double S = cbrt(R);
        roots[0] = -2.0 * S - a / 3.0;
        roots[1] = S - a / 3.0;
        roots[2] = roots[1];
        return 2;
    } else {
        double sqrtD = sqrt(D);
        double S = cbrt(R + sqrtD);
        double T = cbrt(R - sqrtD);
        roots[0] = (S + T) - a / 3.0;
        return 1;
    }
}

void eigenvalues(double A[3][3], double lambda[3]) {
    double tr = A[0][0] + A[1][1] + A[2][2];
    double a = -tr;

    double b = A[0][0]*A[1][1] + A[0][0]*A[2][2] + A[1][1]*A[2][2]
             - (A[0][1]*A[1][0] + A[0][2]*A[2][0] + A[1][2]*A[2][1]);

    double detA = A[0][0]*A[1][1]*A[2][2]
                + A[0][1]*A[1][2]*A[2][0]
                + A[0][2]*A[1][0]*A[2][1]
                - A[0][2]*A[1][1]*A[2][0]
                - A[0][0]*A[1][2]*A[2][1]
                - A[0][1]*A[1][0]*A[2][2];

    double c = -detA;

    int n = solveCubic(a, b, c, lambda);
}

double spectralRadius(double lambda[3]) {
    double r0 = fabs(lambda[0]);
    double r1 = fabs(lambda[1]);
    double r2 = fabs(lambda[2]);

    double max = r0;
    if (r1 > max) max = r1;
    if (r2 > max) max = r2;

    return max;
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
	double lambda[3];
	eigenvalues(A, lambda);
	double spectral_radius = spectralRadius(lambda);

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
    FILE *f1 = fopen("output1.csv", "w");
    for (int i = 0; i < sample; i++) {
        fprintf(f1, "%f,%f,%f\n", seq1[i][0], seq1[i][1], seq1[i][2]);
    }
    fclose(f1);

    // Xuất file 2
    FILE *f2 = fopen("output2.csv", "w");
    for (int i = 0; i < sample; i++) {
        fprintf(f2, "%f,%f,%f\n", seq2[i][0], seq2[i][1], seq2[i][2]);
    }
    fclose(f2);

    printf("----------------- DONE -------------------\n");
    return 0;
}
*/
