using Plots, DelimitedFiles

# Convert decimal Megabyte to binary Gibibyte
mb_to_gib(x) = x * (1e6 / (2 ^ 30))

function plot_ping(name::String)
    system = "Fugaku"
    xlims = (1, 2 ^ 23)
    xticks = (exp2.(0:2:22), ["1 B",   "4 B",   "16 B",   "64 B",   "256 B",
                              "1 KiB", "4 KiB", "16 KiB", "64 KiB", "256 KiB",
                              "1 MiB", "4 MiB"])

    julia = readdlm(joinpath(@__DIR__, "a.csv"), ',', Float64; skipstart=1)

    p = plot(;
             title = "Latency of MPI $(name) @ $(system)",
             xlabel = "message size",
             xscale = :log10,
             xlims,
             xticks,
             ylabel = "time [sec]",
             yscale = :log10,
             legend=:topleft,
             )
    plot!(p, julia[:, 1], julia[:, 5]; label="Julia (MPI.jl)", marker=:auto, markersize=3)
    savefig(joinpath(@__DIR__, "$(lowercase(name))-latency.pdf"))

end

plot_ping("PingPong")
