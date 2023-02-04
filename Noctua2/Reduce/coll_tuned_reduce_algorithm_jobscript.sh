#!/bin/bash
##SBATCH -q express
#SBATCH -J JuliaBenchMark
#SBATCH -A hpc-prf-mpibj
#SBATCH -p normal
#SBATCH -N 4                       ## [NUMBER_OF_NODE]
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=16      ## [NUMBER_OF_MPI_RANKS_PER_NODE]
#SBATCH --exclusive
#SBATCH -t 40:40:00

module reset
module load lang       # loading the gateway module
module load JuliaHPC   # loading the latest JuliaHPC

mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_reduce_algorithm 4 -np 64 julia --project coll_tuned_reduce_algorithm_binary.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_reduce_algorithm 1 -np 64 julia --project coll_tuned_reduce_algorithm_linear.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_reduce_algorithm 5 -np 64 julia --project coll_tuned_reduce_algorithm_binomial.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_reduce_algorithm 0 -np 64 julia --project coll_tuned_reduce_algorithm_ignore.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_reduce_algorithm 2 -np 64 julia --project coll_tuned_reduce_algorithm_chain.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_reduce_algorithm 6 -np 64 julia --project coll_tuned_reduce_algorithm_in-order_binary.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_reduce_algorithm 7 -np 64 julia --project coll_tuned_reduce_algorithm_rabenseifner.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_reduce_algorithm 3 -np 64 julia --project coll_tuned_reduce_algorithm_pipeline.jl 
