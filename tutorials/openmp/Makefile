CC=gcc-7
#CC=gcc
FLAGS=-fopenmp

omp_hello: omp_hello.c
	$(CC) $(FLAGS) -o omp_hello omp_hello.c

omp_mm: omp_mm.c
	$(CC) $(FLAGS) -o omp_mm omp_mm.c

omp_get_env_info: omp_get_env_info.c
	$(CC) $(FLAGS) -o omp_get_env_info omp_get_env_info.c

omp_reduction: omp_reduction.c
	$(CC) $(FLAGS) -o omp_reduction omp_reduction.c

omp_workshare1: omp_workshare1.c
	$(CC) $(FLAGS) -o omp_workshare1 omp_workshare1.c

omp_dot_product_serial: omp_dot_product_serial.c
	$(CC) $(FLAGS) -o omp_dot_product_serial omp_dot_product_serial.c

omp_dot_product_openmp: omp_dot_product_openmp.c
	$(CC) $(FLAGS) -o omp_dot_product_openmp omp_dot_product_openmp.c
