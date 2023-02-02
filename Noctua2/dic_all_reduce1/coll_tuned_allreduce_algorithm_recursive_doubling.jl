using MPIBenchmarks
benchmark(OSUAllreduce(Int8; max_size=2097152, filename="coll_tuned_allreduce_algorithm_recursive_doubling.jl.csv"))
