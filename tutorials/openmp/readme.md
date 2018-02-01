# Open MP

These OpenMP examples are courtesy of Blaise Barney from the Lawrence Livermore National Laboratory in the USA.

Look at each carefully to see what it is doing.
Then start to experiment to see what happens when you modified some of the parameters.

Use `printf` to log what is happening. 

I suggest you look at them in the following order:

1. omp_hello.c
2. omp_get_env_info.c
3. omp_workshare1.c
4. omp_mm.c
5. omp_reduction.c
6. omp_dot_product_serial.c
7. omp_dot_product_serial.c

## Building 

The Makefile will build each of the files.
Simply type
```bash
make <exec_name>

make omp_mm
```  

## Running

You can set the number of threads using an environment variable. 

```bash
export OMP_NUM_THREADS=4
```

