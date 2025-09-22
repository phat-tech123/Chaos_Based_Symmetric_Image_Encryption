#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define EPS 1e-12

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

void eigenvalues3x3(double A[3][3], double lambda[3]) {
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

    for (int i = 0; i < n; ++i) {
        printf("lambda[%d] = %.12f\n", i+1, lambda[i]);
    }
}

double spectralRadius(double lambda[3], int n) {
    double r0 = fabs(lambda[0]);
    double r1 = fabs(lambda[1]);
    double r2 = fabs(lambda[2]);

    double max = r0;
    if (r1 > max) max = r1;
    if (r2 > max) max = r2;

    return max;
}


int main() {
    double A[3][3] = {
        {0.0, 1.0/2.0, 1.0/20.0},
        {1.0/3.0, 0.0, 1.0/3.0},
        {1.0/20.0, 1.0/2.0, 0.0}
    };

    double lambda[3];
    eigenvalues3x3(A, lambda);


	double rho = spectralRadius(lambda, 3);
    	printf("Spectral radius = %.12f\n", rho); 
    	return 0;
}

