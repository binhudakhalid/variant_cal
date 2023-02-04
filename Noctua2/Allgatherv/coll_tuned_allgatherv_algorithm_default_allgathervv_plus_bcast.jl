using MPIBenchmarks
benchmark(OSUAllgatherv(Int8; max_size=2097152, filename="coll_tuned_allgatherv_algorithm_default_allgathervv_plus_bcast.jl.csv"))
