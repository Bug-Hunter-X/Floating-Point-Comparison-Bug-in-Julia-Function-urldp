```julia
function myfunction_fixed(x; tolerance = 1e-9)
  if abs(x) < tolerance
    return 0
  elseif x > 0
    return x^2
  else
    return -x^2
  end
end

println(myfunction_fixed(2))
println(myfunction_fixed(0))
println(myfunction_fixed(-2))
println(myfunction_fixed(1e-10))
```