.phony all:
all: cordic

cordic: cordic_main.c cordic_V.c cordic_R.c
	gcc cordic_main.c cordic_V.c cordic_R.c -o cordic.exe -lm

.phony ASSEMBLY:
assembly:
	gcc -S cordic_V.c
	gcc -S cordic_R.c

.phony CALLGRIND:
callgrind:
	rm -rf callgrind.out.*
	valgrind --tool=callgrind ./cordic.exe
	callgrind_annotate callgrind.out.*

.phony CACHEGRIND:
cachegrind:
	valgrind --tool=cachegrind --branch-sim=yes ./cordic.exe


.phony CLEAN:
clean:
	-rm -rf *.exe
	-rm -rf *grind.out.*
