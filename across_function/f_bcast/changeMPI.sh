rm -rf ~/.julia/compiled/v1.8/MPI
rm -rf /upb/departments/pc2/groups/hpc-prf-mpibj/khalids/.julia/compiled/v1.8/MPI
rm -rf /upb/departments/pc2/users/k/khalids/.julia/compiled/v1.8/MPI
ml reset
ml lang
ml JuliaHPC
ml $1
