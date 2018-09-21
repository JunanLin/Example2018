using Test 
using Example2018

@testset "Polynomials form a ring" begin

	z = Polynomial([0])

	for n in 1:200
		deg = rand(0:100)
		p = Polynomial(rand(-100000:100000, deg+1))
		@test p + z == p
		@test z + p == p
		@test p + (-p) == z
	end
end
