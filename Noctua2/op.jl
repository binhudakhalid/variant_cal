using Bench

#bench1("MPI_Allreduce", "task_000p2", @__FILE__, "OpenMPI")
#benchmark(LineGraph(), "/scratch/hpc-prf-mpibj/com_j_variant/Noctua2/dic_all_reduce1")
#benchmark(BarChart(), "/scratch/hpc-prf-mpibj/com_j_variant/Noctua2/dic_all_reduce1")

imb_b_rbarchart("/scratch/hpc-prf-mpibj/com_j_variant/Noctua2/Scatter", 2)
imb_b_rbarchart("/scratch/hpc-prf-mpibj/com_j_variant/Noctua2/Scatter", 3)
imb_b_rbarchart("/scratch/hpc-prf-mpibj/com_j_variant/Noctua2/Scatter", 7)
imb_b_rbarchart("/scratch/hpc-prf-mpibj/com_j_variant/Noctua2/Scatter", 8)
imb_b_rbarchart("/scratch/hpc-prf-mpibj/com_j_variant/Noctua2/Scatter", 12)
imb_b_rbarchart("/scratch/hpc-prf-mpibj/com_j_variant/Noctua2/Scatter", 17)
imb_b_rbarchart("/scratch/hpc-prf-mpibj/com_j_variant/Noctua2/Scatter", 22)
imb_b_rbarchart("/scratch/hpc-prf-mpibj/com_j_variant/Noctua2/Scatter", 23)


benchmark(LineGraph(), "/scratch/hpc-prf-mpibj/com_j_variant/Noctua2/Scatter")
