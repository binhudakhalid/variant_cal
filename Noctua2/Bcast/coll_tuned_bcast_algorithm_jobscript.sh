#!/bin/bash
##SBATCH -q express
#SBATCH -J JuliaBenchMark
#SBATCH -A hpc-prf-mpibj
#SBATCH -p normal
#SBATCH -N 4                       ## [NUMBER_OF_NODE]
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=64      ## [NUMBER_OF_MPI_RANKS_PER_NODE]
#SBATCH --exclusive
#SBATCH -t 40:40:00

###module reset
###module load lang       # loading the gateway module
###module load JuliaHPC   # loading the latest JuliaHPC
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 8 -np 256 julia --project coll_tuned_bcast_algorithm_scatter_allgather.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 4 -np 256 julia --project coll_tuned_bcast_algorithm_split_binary_tree.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 1 -np 256 julia --project coll_tuned_bcast_algorithm_basic_linear.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 5 -np 256 julia --project coll_tuned_bcast_algorithm_binary_tree.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 0 -np 256 julia --project coll_tuned_bcast_algorithm_ignore.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 2 -np 256 julia --project coll_tuned_bcast_algorithm_chain.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 6 -np 256 julia --project coll_tuned_bcast_algorithm_binomial_tree.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 7 -np 256 julia --project coll_tuned_bcast_algorithm_knomial_tree.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 9 -np 256 julia --project coll_tuned_bcast_algorithm_scatter_allgather_ring.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 3 -np 256 julia --project coll_tuned_bcast_algorithm_pipeline.jl 
