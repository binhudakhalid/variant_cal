using MPIBenchmarks
benchmark(OSUBroadcast(Int8; max_size=2097152, filename="coll_tuned_bcast_algorithm_ignore.jl.csv"))
