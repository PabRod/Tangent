export numderiv

"""
    numderiv(f, x₀, ϵ = 1e-7)

Returns the approximate numerical derivative of ``f(x)`` at ``x_0`` using the forward finite-difference method with a step ``\epsilon``.
Namely:

``f'(x_0) \\approx \\frac{f(x_0 + \\epsilon) - f(x_0)}{\\epsilon}``

## Examples
```julia-repl
julia> f(x) = x^2
f (generic function with 1 method)

julia> numderiv(f, 3, 1e-2)
6.009999999999849

julia> numderiv(f, 3, 1e-4)
6.000100000012054
```
"""
function numderiv(f, x₀, ϵ=1e-7)
    df = f(x₀ + ϵ) - f(x₀)
    return df / ϵ
end