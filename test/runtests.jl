using Test 
using Example2018

z = Polynomial([0])
p = Polynomial([1,2,3])
@test p + z == p
