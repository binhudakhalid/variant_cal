using MPIBenchmarks
benchmark(OSUAlltoall(Int8; max_size=2097152, filename="coll_tuned_alltoall_algorithm_modified_bruck.jl.csv"))
