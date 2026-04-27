module(
 "extra_math"
)

extra_math.epsilon=1e-9

function extra_math.is_approx(value,target,artifact)
 local o=value-target
 if o>=-artifact and o<=artifact then
  return true
 end
 return false
end

function extra_math.is_zero_approx(value)
 if extra_math.is_approx(value,0,extra_math_epsilon) then
  return true
 end
 return false
end

function extra_math.sign(value)
 if value==0 then
  return 0
 end
 if value>0 then
  return 1
 end
 return -1
end