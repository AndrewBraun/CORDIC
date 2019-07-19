#include <stdio.h>
#include <math.h>
#include "cordic_R.h"
#include "cordic_V.h"

int z_table[15] = { 25735, 15192, 8027, 4074, 2045,
	1023, 511, 255, 127, 63, 31, 15, 7, 3, 1};

void verify_V( int x_i_init, int y_i_init, int z_i_init,
			int x_i, int y_i, int z_i);

void verify_R( int x_i_init, int y_i_init, int z_i_init,
			int x_i, int y_i, int z_i);

typedef enum {V, R} Mode;

int main( void) {
	int x_i_init, y_i_init, z_i_init;
	int x_i, y_i, z_i;
	Mode curMode = R;

	x_i = ( x_i_init = 32768);
	y_i = ( y_i_init = 0);
	z_i_init = 14745;

	if ( curMode == V) {
		cordic_V_fixed_point( &x_i, &y_i, &z_i);
		verify_V( x_i_init, y_i_init, z_i_init, x_i, y_i, z_i);
	}
	else {
		cordic_R_fixed_point( &x_i, &y_i, &z_i);
		verify_R( x_i_init, y_i_init, z_i_init, x_i, y_i, z_i);
	}
}

void verify_V( int x_i_init, int y_i_init, int z_i_init,
			int x_i, int y_i, int z_i){
	
	double x_d_init, y_d_init, z_d_init, x_d, y_d, z_d;

	x_d_init = (double) x_i_init / (1 << 15);
	y_d_init = (double) y_i_init / (1 << 15);
	z_d_init = (double) z_i_init / (1 << 15);

	x_d = sqrt( (x_d_init * x_d_init) + (y_d_init * y_d_init) );
	y_d = 0.0;
	z_d = atan( x_d_init / y_d_init);

	printf( "Vectoring Mode\n\n");

	printf("x_i_init = %5i\tx_d_init = %f\n", x_i_init, x_d_init);
	printf("y_i_init = %5i\ty_d_init = %f\n", y_i_init, y_d_init);
	printf("z_i_init = %5i\tz_d_init = %f\n", z_i_init, z_d_init);

	printf("x_i = %5i\t\tx_d = %f\n", x_i, x_d);
	printf("y_i = %5i\t\ty_d = %f\n", y_i, y_d);
	printf("z_i = %5i\t\tz_d = %f\n", z_i, z_d);
}

void verify_R( int x_i_init, int y_i_init, int z_i_init,
			int x_i, int y_i, int z_i){

	double x_d_init, y_d_init, z_d_init, x_d, y_d, z_d;

	x_d_init = (double) x_i_init / (1 << 15);
	y_d_init = (double) y_i_init / (1 << 15);
	z_d_init = (double) z_i_init / (1 << 15);

	x_d = x_d_init * cos(z_d_init) - y_d_init * sin(z_d_init);
	y_d = x_d_init * sin(z_d_init) + y_d_init * cos(z_d_init);
	z_d = 0.0;

	printf( "Rotation Mode\n\n");

	printf("x_i_init = %5i\tx_d_init = %f\n", x_i_init, x_d_init);
	printf("y_i_init = %5i\ty_d_init = %f\n", y_i_init, y_d_init);
	printf("z_i_init = %5i\tz_d_init = %f\n", z_i_init, z_d_init);

	printf("x_i = %5i\t\tx_d = %f\n", x_i, x_d);
	printf("y_i = %5i\t\ty_d = %f\n", y_i, y_d);
	printf("z_i = %5i\t\tz_d = %f\n", z_i, z_d);
}


