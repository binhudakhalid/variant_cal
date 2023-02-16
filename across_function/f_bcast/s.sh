#!/bin/bash
##SBATCH -q express
#SBATCH -J JuliaBenchMark
#SBATCH -A hpc-prf-mpibj
#SBATCH -p normal
#SBATCH -N 2                       ## [NUMBER_OF_NODE]
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=8      ## [NUMBER_OF_MPI_RANKS_PER_NODE]
##SBATCH --exclusive
#SBATCH -t 50:40:00
echo mpi/OpenMPI/4.1.4-GCC-11.3.0 
. changeMPI.sh mpi/OpenMPI/4.1.4-GCC-11.3.0 
julia set_mpijl.jl 
julia check_mpi_version.jl 

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

echo mpi/OpenMPI/4.1.1-GCC-11.2.0 
. changeMPI.sh mpi/OpenMPI/4.1.1-GCC-11.2.0 
julia set_mpijl.jl 
julia check_mpi_version.jl 

mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 8 -np 16 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_bcast_algorithm_scatter_allgather.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 4 -np 16 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_bcast_algorithm_split_binary_tree.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 1 -np 16 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_bcast_algorithm_basic_linear.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 5 -np 16 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_bcast_algorithm_binary_tree.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 0 -np 16 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_bcast_algorithm_ignore.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 2 -np 16 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_bcast_algorithm_chain.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 6 -np 16 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_bcast_algorithm_binomial_tree.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 7 -np 16 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_bcast_algorithm_knomial_tree.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 9 -np 16 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_bcast_algorithm_scatter_allgather_ring.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_bcast_algorithm 3 -np 16 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_bcast_algorithm_pipeline.jl 

echo mpi/impi/2021.7.1-intel-compilers-2022.2.1 
. changeMPI.sh mpi/impi/2021.7.1-intel-compilers-2022.2.1 
julia set_mpijl.jl 
julia check_mpi_version.jl 

mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=5 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_BCAST_Topology_aware_recursive_doubling.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=7 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_BCAST_Shumilin_s.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=12 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_BCAST_NUMA_aware_SHM-based_SSE4_2.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=8 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_BCAST_Knomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=1 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_BCAST_Binomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=4 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_BCAST_Topology_aware_binomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=6 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_BCAST_Topology_aware_binominal_gather_+_scatter.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=13 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_BCAST_NUMA_aware_SHM-based_AVX2.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=2 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_BCAST_Recursive_doubling.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=10 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_BCAST_Topology_aware_SHM-based_Knomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=11 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_BCAST_Topology_aware_SHM-based_Knary.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=9 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_BCAST_Topology_aware_SHM-based_flat.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=14 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_BCAST_NUMA_aware_SHM-based_AVX512.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=3 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_BCAST_Ring.jl 

echo mpi/impi/2021.5.0-intel-compilers-2022.0.1 
. changeMPI.sh mpi/impi/2021.5.0-intel-compilers-2022.0.1 
julia set_mpijl.jl 
julia check_mpi_version.jl 

mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=5 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_BCAST_Topology_aware_recursive_doubling.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=7 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_BCAST_Shumilin_s.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=12 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_BCAST_NUMA_aware_SHM-based_SSE4_2.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=8 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_BCAST_Knomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=1 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_BCAST_Binomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=4 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_BCAST_Topology_aware_binomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=6 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_BCAST_Topology_aware_binominal_gather_+_scatter.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=13 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_BCAST_NUMA_aware_SHM-based_AVX2.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=2 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_BCAST_Recursive_doubling.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=10 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_BCAST_Topology_aware_SHM-based_Knomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=11 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_BCAST_Topology_aware_SHM-based_Knary.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=9 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_BCAST_Topology_aware_SHM-based_flat.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=14 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_BCAST_NUMA_aware_SHM-based_AVX512.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_BCAST=3 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_BCAST_Ring.jl 

