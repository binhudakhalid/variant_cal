using MPIBenchmarks
benchmark(OSUAllreduce(Int8; max_size=2097152, filename="mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLREDUCE_Recursive_doubling.jl.csv"))
