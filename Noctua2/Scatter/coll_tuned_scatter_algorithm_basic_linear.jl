using MPIBenchmarks
benchmark(OSUScatter(Int8; max_size=2097152, filename="coll_tuned_scatter_algorithm_basic_linear.jl.csv"))
