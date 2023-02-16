#!/bin/bash
##SBATCH -q express
#SBATCH -J JuliaBenchMark
#SBATCH -A hpc-prf-mpibj
#SBATCH -p normal
#SBATCH -N 4                       ## [NUMBER_OF_NODE]
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=16      ## [NUMBER_OF_MPI_RANKS_PER_NODE]
#SBATCH --exclusive
#SBATCH -t 10:40:00
echo mpi/OpenMPI/4.1.4-GCC-11.3.0 
. changeMPI.sh mpi/OpenMPI/4.1.4-GCC-11.3.0 
julia set_mpijl.jl 
julia check_mpi_version.jl 

mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 4 -np 64 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_ring.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 1 -np 64 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_basic_linear.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 5 -np 64 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_segmented_ring.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 0 -np 64 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_ignore.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 2 -np 64 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_nonoverlapping_tuned_reduce_plus_tuned_bcast.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 3 -np 64 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_recursive_doubling.jl 

echo mpi/OpenMPI/4.1.1-GCC-11.2.0 
. changeMPI.sh mpi/OpenMPI/4.1.1-GCC-11.2.0 
julia set_mpijl.jl 
julia check_mpi_version.jl 

mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 4 -np 64 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_allreduce_algorithm_ring.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 1 -np 64 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_allreduce_algorithm_basic_linear.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 5 -np 64 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_allreduce_algorithm_segmented_ring.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 0 -np 64 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_allreduce_algorithm_ignore.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 2 -np 64 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_allreduce_algorithm_nonoverlapping_tuned_reduce_plus_tuned_bcast.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 3 -np 64 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_allreduce_algorithm_recursive_doubling.jl 

echo mpi/impi/2021.7.1-intel-compilers-2022.2.1 
. changeMPI.sh mpi/impi/2021.7.1-intel-compilers-2022.2.1 
julia set_mpijl.jl 
julia check_mpi_version.jl 

mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=5 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Binomial_gather_+_scatter.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=7 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Shumilin_s_ring.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=12 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_SHM-based_Knary.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=8 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Ring.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=1 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Recursive_doubling.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=4 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_Reduce_+_Bcast.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=6 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_binominal_gather_+_scatter.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=2 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Rabenseifner_s.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=10 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_SHM-based_flat.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=11 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_SHM-based_Knomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=9 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Knomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=3 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Reduce_+_Bcast.jl 

echo mpi/impi/2021.5.0-intel-compilers-2022.0.1 
. changeMPI.sh mpi/impi/2021.5.0-intel-compilers-2022.0.1 
julia set_mpijl.jl 
julia check_mpi_version.jl 

mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=5 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLREDUCE_Binomial_gather_+_scatter.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=7 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLREDUCE_Shumilin_s_ring.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=12 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_SHM-based_Knary.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=8 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLREDUCE_Ring.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=1 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLREDUCE_Recursive_doubling.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=4 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_Reduce_+_Bcast.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=6 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_binominal_gather_+_scatter.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=2 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLREDUCE_Rabenseifner_s.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=10 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_SHM-based_flat.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=11 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_SHM-based_Knomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=9 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLREDUCE_Knomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=3 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLREDUCE_Reduce_+_Bcast.jl 

