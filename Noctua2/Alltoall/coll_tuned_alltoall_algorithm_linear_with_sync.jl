using MPIBenchmarks
benchmark(OSUAlltoall(Int8; max_size=2097152, filename="coll_tuned_alltoall_algorithm_linear_with_sync.jl.csv"))
