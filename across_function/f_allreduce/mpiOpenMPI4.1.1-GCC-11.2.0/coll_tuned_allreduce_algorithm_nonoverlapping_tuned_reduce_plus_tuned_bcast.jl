using MPIBenchmarks
benchmark(OSUAllreduce(Int8; max_size=2097152, filename="mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_allreduce_algorithm_nonoverlapping_tuned_reduce_plus_tuned_bcast.jl.csv"))
