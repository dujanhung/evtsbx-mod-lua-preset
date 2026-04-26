function extra_math_sign_int(a)
 if a==0 then
  return 0
 elseif a>0 then
  return 1
 else
  return -1
 end
end

function extra_math_sign_float(a)
 if a==0.0 then
  return 0.0
 elseif a>0.0 then
  return 1.0
 else
  return -1.0
 end
end