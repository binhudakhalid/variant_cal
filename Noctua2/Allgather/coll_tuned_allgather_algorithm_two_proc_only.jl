using MPIBenchmarks
benchmark(OSUAllgather(Int8; max_size=2097152, filename="coll_tuned_allgather_algorithm_two_proc_only.jl.csv"))