using MPIBenchmarks
benchmark(OSUScatter(Int8; max_size=2097152, filename="mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_scatter_algorithm_binomial.jl.csv"))
