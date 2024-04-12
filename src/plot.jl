export plottangent

using Plots

"""
    plottangent(f, x₀, xs, ϵ=1e-7)

    Plots the approximate tangent of ``f(x)`` at ``x_0``.
"""
function plottangent(f, x₀, xs, ϵ=1e-7; kwargs...)
    # Compute the tangent
    r = tangent(f, x₀, ϵ)

    # Store the values...
    y1 = f.(xs) # ... of the original function ...
    y2 = r.(xs) # ... and its approximate tangent

    # Plot all of it together
    plot(xs, [y1, y2]; kwargs...)
end