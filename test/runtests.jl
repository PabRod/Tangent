using Tangent
using Test

@testset "numderiv" begin
    f(x) = 2 * x + 1
    g(x) = x^3 - x
    @test numderiv(f, 3, 1) == 2
    @test numderiv(g, 2) ≈ 11 atol = 0.01
end

@testset "tangent" begin
    f(x) = 2x + 1

    @test tangent(f, 1)(2) ≈ f(2)
    @test tangent(f, 1)(4) ≈ f(4)
end