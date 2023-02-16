mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 8 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_bcast_algorithm_scatter_allgather.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 4 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_bcast_algorithm_split_binary_tree.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 1 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_bcast_algorithm_basic_linear.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 5 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_bcast_algorithm_binary_tree.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 0 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_bcast_algorithm_ignore.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 2 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_bcast_algorithm_chain.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 6 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_bcast_algorithm_binomial_tree.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 7 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_bcast_algorithm_knomial_tree.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 9 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_bcast_algorithm_scatter_allgather_ring.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 3 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_bcast_algorithm_pipeline.jl 