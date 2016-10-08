#ifndef __VECINOS__H_INCLUDED__
#define __VECINOS__H_INCLUDED__

#define POSICION( fila, columna, filas, columnas) ((fila*columnas+columna))

unsigned int vecinos(unsigned char* matriz,
		unsigned int i, unsigned int j,
		unsigned int m, unsigned int n);

#endif
