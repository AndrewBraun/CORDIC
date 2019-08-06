#include "cordic_V.h"

int z_table[15];

#pragma ATOMIC
void cordic_V_fixed_point( int * restrict x, int * restrict y, int * restrict z) {
	register int x_temp_1, y_temp_1, z_temp;
	register int x_temp_2, y_temp_2;
	register int i;

	x_temp_1 = *x;
	y_temp_1 = *y;
	z_temp = 0;

	for ( i = 0; i < 15; i++) {

		if ( y_temp_1 >= 0) { // direction = -1

			y_temp_2 = y_temp_1 - (x_temp_1 >> i);
			x_temp_2 = x_temp_1 + (y_temp_1 >> i);
			z_temp += z_table[i];
		}
		else { // direction = 1

			y_temp_2 = y_temp_1 + (x_temp_1 >> i);
			x_temp_2 = x_temp_1 - (y_temp_1 >> i);
			z_temp -= z_table[i];
		}

		i++;

		if ( y_temp_2 >= 0) { // direction = -1

			y_temp_1 = y_temp_2 - (x_temp_2 >> i);
			x_temp_1 = x_temp_2 + (y_temp_2 >> i);
			z_temp += z_table[i];
		}
		else { // direction = 1

			y_temp_1 = y_temp_2 + (x_temp_2 >> i);
			x_temp_1 = x_temp_2 - (y_temp_2 >> i);
			z_temp -= z_table[i];
		}

		i++;

		if ( y_temp_1 >= 0) { // direction = -1

			y_temp_2 = y_temp_1 - (x_temp_1 >> i);
			x_temp_2 = x_temp_1 + (y_temp_1 >> i);
			z_temp += z_table[i];
		}
		else { // direction = 1

			y_temp_2 = y_temp_1 + (x_temp_1 >> i);
			x_temp_2 = x_temp_1 - (y_temp_1 >> i);
			z_temp -= z_table[i];
		}

		x_temp_1 = x_temp_2;
		y_temp_1 = y_temp_2;
	}

	*x = x_temp_1;
	*y = y_temp_1;
	*z = z_temp;
}
