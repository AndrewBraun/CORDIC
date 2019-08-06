#include "cordic_R.h"

int z_table[15];

#pragma ATOMIC
void cordic_R_fixed_point( int * restrict x, int * restrict y, int * restrict z) {
	register int x_temp_1, y_temp_1, z_temp;
	register int x_temp_2, y_temp_2;
	register int i;

	x_temp_1 = *x;
	y_temp_1 = *y;
	z_temp = *z;

	for ( i = 0; i < 15; i++) {

		if ( z_temp < 0) { // direction = -1

			z_temp += z_table[i];
			x_temp_2 = x_temp_1 + (y_temp_1 >> i);
			y_temp_2 = y_temp_1 - (x_temp_1 >> i);
		}
		else { // direction = 1

			z_temp -= z_table[i];
			x_temp_2 = x_temp_1 - (y_temp_1 >> i);
			y_temp_2 = y_temp_1 + (x_temp_1 >> i);
		}

		i++;

		if ( z_temp < 0) { // direction = -1

			z_temp += z_table[i];
			x_temp_1 = x_temp_2 + (y_temp_2 >> i);
			y_temp_1 = y_temp_2 - (x_temp_2 >> i);
		}
		else { // direction = 1

			z_temp -= z_table[i];
			x_temp_1 = x_temp_2 - (y_temp_2 >> i);
			y_temp_1 = y_temp_2 + (x_temp_2 >> i);
		}

		//x_temp_1 = x_temp_2;
		//y_temp_1 = y_temp_2;
	}

	*x = x_temp_1;
	*y = y_temp_1;
	*z = z_temp;
}
