using MPIBenchmarks
benchmark(OSUAlltoallv(Int8; max_size=2097152, filename="coll_tuned_alltoallv_algorithm_basic_linear.jl.csv"))
