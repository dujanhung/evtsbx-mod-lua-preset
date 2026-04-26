extra_math_epsilon=1e-9

function extra_math_is_zero_approx(a)
 if a>=-extra_math_epsilon and a<=extra_math_epsilon then
  return true
 end
 return false
end

function extra_math_sign_int(a)
 if a==0 then
  return 0
 end
 if a>0 then
  return 1
 end
 return -1
end

function extra_math_sign_float(a)
 if extra_math_is_zero_approx(a) then
  return 0.0
 end
 if a>0.0 then
  return 1.0
 end
 return -1.0
end