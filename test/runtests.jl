using Tangent
using Test

@testset "numerics" begin
    f(x) = 2 * x + 1
    g(x) = x^3 - x
    @test numderiv(f, 3, 1) == 2
    @test numderiv(g, 2) ≈ 11 atol = 0.01
end