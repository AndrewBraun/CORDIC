#include "cordic_R.h"

int z_table[15];

void cordic_R_fixed_point( int *x, int *y, int *z) {
	int x_temp_1, y_temp_1, z_temp;
	int x_temp_2, y_temp_2;
	int i;

	x_temp_1 = *x;
	y_temp_1 = *y;
	z_temp = *z;

	for ( i = 0; i < 15; i++) {
		if ( z_temp < 0) { // direction = -1
			x_temp_2 = x_temp_1 + (y_temp_1 >> i);
			y_temp_2 = y_temp_1 - (x_temp_1 >> i);
			z_temp += z_table[i];
		}
		else { // direction = 1
			x_temp_2 = x_temp_1 - (y_temp_1 >> i);
			y_temp_2 = y_temp_1 + (x_temp_1 >> i);
			z_temp -= z_table[i];
		}

		x_temp_1 = x_temp_2;
		y_temp_1 = y_temp_2;
	}

	*x = x_temp_1;
	*y = y_temp_1;
	*z = z_temp;
}
