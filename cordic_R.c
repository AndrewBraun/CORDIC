#include "cordic_R.h"

int z_table[15];

#pragma ATOMIC
void cordic_R_fixed_point( int *x, int *y, int *z) {
	register int x_temp_1, y_temp_1, z_temp;
	register int x_temp_2, y_temp_2;
	register int i;

	x_temp_1 = *x;
	y_temp_1 = *y;
	z_temp = *z;

	if ( z_temp < 0) { // direction = -1

		x_temp_2 = x_temp_1 + y_temp_1;
		y_temp_2 = y_temp_1 - x_temp_1;
		z_temp += z_table[0];
		}
	else { // direction = 1

		x_temp_2 = x_temp_1 - y_temp_1;
		y_temp_2 = y_temp_1 + x_temp_1;
		z_temp -= z_table[0];
	}

	for ( i = 1; i < 15; i++) {
		x_temp_1 = x_temp_2;
		y_temp_1 = y_temp_2;

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
	}

	*x = x_temp_2;
	*y = y_temp_2;
	*z = z_temp;
}
