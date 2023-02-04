using MPIBenchmarks
benchmark(OSUGather(Int8; max_size=2097152, filename="coll_tuned_gather_algorithm_basic_linear.jl.csv"))
