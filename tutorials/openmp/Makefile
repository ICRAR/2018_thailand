CC=gcc
FLAGS=-fopenmp

omp_hello: omp_hello.c
    $(CC) $(FLAGS) -o omp_hello omp_hello.o

omp_mm: omp_mm.c
    $(CC) $(FLAGS) -o omp_mm omp_mm.o

omp_get_env_info: omp_get_env_info.c
    $(CC) $(FLAGS) -o omp_get_env_info omp_get_env_info.o

omp_reduction: omp_reduction.c
    $(CC) $(FLAGS) -o omp_reduction omp_reduction.o

omp_workshare1: omp_workshare1.c
    $(CC) $(FLAGS) -o omp_workshare1 omp_workshare1.o

omp_dot_product_serial: omp_dot_product_serial.c
    $(CC) $(FLAGS) -o omp_dot_product_serial omp_dot_product_serial.o

omp_dot_product_openmp: omp_dot_product_openmp.c
    $(CC) $(FLAGS) -o omp_dot_product_openmp omp_dot_product_openmp.o

omp_bug1: omp_bug1.c
    $(CC) $(FLAGS) -o omp_bug1 omp_bug1.o

omp_bug2: omp_bug2.c
    $(CC) $(FLAGS) -o omp_bug2 omp_bug2.o

clean:
    rm -f *.o
