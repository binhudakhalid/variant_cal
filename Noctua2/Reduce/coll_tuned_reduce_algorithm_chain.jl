using MPIBenchmarks
benchmark(OSUReduce(Int8; max_size=2097152, filename="coll_tuned_reduce_algorithm_chain.jl.csv"))
