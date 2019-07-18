#include <stdio.h>
#include <math.h>

/*
Credit: M. Sima
*/
int main(void){

	double x_d, y_d, z_d;
	int x_i, y_i, z_i;

	x_d = 0.82;
	y_d = 0.0;
	//z_d = atan(y_d / x_d);
	z_d = atan(x_d);

	x_i = (int) (x_d * (1 << 15));
	y_i = (int) (y_d * (1 << 15));
	z_i = (int) (z_d * (1 << 15));

	printf("x_d = %f\t\t\tx_i = %i\n", x_d, x_i);
	printf("y_d = %f\t\t\ty_i = %i\n", y_d, y_i);
	printf("z_d = %f\t\t\tz_i = %i\n", z_d, z_i);

	printf("\n");
	printf("The angle table:\n");
	for (int i = 0; i < 15; i++) {
		printf("z[%2i] = %i\n",
			i,
			(int) (atan( pow( 2.0, (double) (-i))) * (1 << 15)));
	}
}
