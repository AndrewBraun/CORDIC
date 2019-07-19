#include <stdio.h>
#include <math.h>

int main(void){

	double x_d, y_d, z_d, x_n_d, y_n_d;
	int x_i, y_i, z_i, x_n_i, y_n_i;

	x_d = 1.0;
	y_d = 0.0;
	z_d = 1.1;

	x_i = (int) (x_d * (1 << 15));
	y_i = (int) (y_d * (1 << 15));
	z_i = (int) (z_d * (1 << 15));

	printf("x_d = %f\t\t\tx_i = %i\n", x_d, x_i);
	printf("y_d = %f\t\t\ty_i = %i\n", y_d, y_i);
	printf("z_d = %f\t\t\tz_i = %i\n", z_d, z_i);

	x_n_d = x_d * cos(z_d) - y_d * sin(z_d);
	y_n_d = x_d * sin(z_d) + y_d * cos(z_d);

	x_n_i = (int) (x_n_d * (1 << 15));
	y_n_i = (int) (y_n_d * (1 << 15));

	printf("x'd = %f\t\t\tx'i = %i\n", x_n_d, x_n_i);
	printf("y'd = %f\t\t\ty'i = %i\n", y_n_d, y_n_i);

	double gain_d = 1;
	for (int i = 0; i < 15; i++){
		gain_d = gain_d * sqrt(1 + pow(2, -2*i));
	}
	int gain_i = (int) (gain_d * (1 << 15));

	printf("\ngain_d = %f\t\t\tgain_i = %i\n", gain_d, gain_i);
	
	x_n_d = x_n_d * gain_d;
	y_n_d = y_n_d * gain_d;
	x_n_i = (int) (x_n_d * (1 << 15));
	y_n_i = (int) (y_n_d * (1 << 15));

	printf("x'd = %f\t\t\tx'i = %i\n", x_n_d, x_n_i);
	printf("y'd = %f\t\t\ty'i = %i\n", y_n_d, y_n_i);	 
}
