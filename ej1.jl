### A Pluto.jl notebook ###
# v0.12.18

using Markdown
using InteractiveUtils
# ╔═╡ 5b2ee40e-a2b8-11ea-0fef-c35fe6918860
md"""
x = collect(0:0.1:25)
x2 = collect(0:0.1:40)
x3 = collect(0:0.1:20)
x4 = collect(20:0.1:25)
x5 = collect(0:0.1:26.6)
x6 = collect(0:3:20)
y = collect(0:0.1:50)


function g1(x)
    return 50-2x
end
function g2(x)
    return 10
end
function g3(y)
    return 40
end
function g4(x)
    return 0
end
function g5(y)
    return 0
end
function obj(x,c)
    return (1/80)*(c-120x)
end
using Plots
u = 2*ones(size(x6,1))
v = 3*ones(size(x6,1))

plot(x3,g2.(x3), xlabel = "x", ylabel = "y", label = "puntos disponibles", fillrange = 0, color = "blue", fillalpha = 0.1)
plot!(x4,g1.(x4), xlabel = "x", ylabel = "y", label = "", fillrange = 0, color = "blue", fillalpha = 0.1)
plot!(x,g1.(x), xlabel = "x", ylabel = "y", label = "20x+10y=500",thickness_scaling=1.4)
plot!(x2,g2.(x2), label="y=10")
plot!(g3.(y),y,label="x=40")
plot!(x2,g4.(x2),label="y=0")
plot!(g5.(y),y,label="x=0")
plot!(x3,obj.(x3,2400),label="c=2400",color="red")
quiver!(x6,obj.(x6,2400),quiver=(u,v), color="red")
plot!(x5,obj.(x5,3200),label="c=3200",color="black")
quiver!(x6,obj.(x6,3200),quiver=(u,v),color="black")
"""
# ╔═╡ Cell order:
# ╟─5b2ee40e-a2b8-11ea-0fef-c35fe6918860
