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
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allgatherv_algorithm 4 -np 4 julia --project coll_tuned_allgatherv_algorithm_neighbor_exchange.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allgatherv_algorithm 1 -np 4 julia --project coll_tuned_allgatherv_algorithm_default_allgathervv_plus_bcast.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allgatherv_algorithm 5 -np 4 julia --project coll_tuned_allgatherv_algorithm_two_proc_only.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allgatherv_algorithm 0 -np 4 julia --project coll_tuned_allgatherv_algorithm_ignore.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allgatherv_algorithm 2 -np 4 julia --project coll_tuned_allgatherv_algorithm_bruck.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allgatherv_algorithm 3 -np 4 julia --project coll_tuned_allgatherv_algorithm_ring.jl 
