mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_SCATTER=2 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_SCATTER_Topology_aware_binomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_SCATTER=3 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_SCATTER_Shumilin_s.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_SCATTER=1 -np 64 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_SCATTER_Binomial.jl 
