# MPI

These are python based MPI examples.

Look at each carefully to see what it is doing.
Then start to experiment to see what happens when you modified some of the parameters.

Use `print` to log what is happening. 


I suggest you look at them in the following order:
1. hello.py
2. seperate_codes.py
3. pass_random_draw.py
4. dot_product_parallel.py
5. trapezodial_serial.py
6. trapezodial_parallel.py


## Execution

### hello.py

mpiexec -n 4 python hello.py

### seperate_codes.py

mpiexec -n 4 python seperate_codes.py

### pass_random_draw.py

mpiexec -n 4 python pass_random_draw.py

### dot_product_parallel.py

mpiexec -n 4 python dot_product_parallel.py 4000

### trapezodial_serial.py

python trapezodial_serial.py 0.0 1.0 10000

### trapezodial_parallel.py

mpiexec -n 4 python trapezodial_parallel.py 0.0 1.0 10000

