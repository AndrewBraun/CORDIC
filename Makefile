.phony all:
all: cordic

cordic: cordic_main.c cordic_V.c cordic_R.c
	gcc cordic_main.c cordic_V.c cordic_R.c -o cordic.exe -lm

.phony CLEAN:
clean:
	-rm -rf *.exe
