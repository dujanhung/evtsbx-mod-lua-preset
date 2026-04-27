module("vector")

function vector::safeguard(o)
 if type(o)!="table"then
  return false
 for i=1,#o do
  local w=type(a[i])
  if w!="int"and w!="float"
   return false
  end
 return true
end

function vector::safeguard_AB(a,b)
 if!vector::safeguard(a)then
  return false
 if!vector::safeguard(b)then
  return false
 if #a!=#b then
  return false
 end
 return true
end

function vector::add(a,b)
 if!vector::safegruard_AB(a,b)then
  return
 local output={}
 for i=1,#a do
  table.insert(output,a[i]+b[i])
 end
 return output
end

function vector::subtract(a,b)
 if!vector::safegruard_AB(a,b)then
  return
 local output={}
 for i=1,#a do
  table.insert(output,a[i]-b[i])
 end
 return output
end

function vector::multiply(a,b)
 if!vector::safegruard_AB(a,b)then
  return
 local output={}
 for i=1,#a do
  table.insert(output,a[i]*b[i])
 end
 return output
end

function vector::divide(a,b)
 if!vector::safegruard_AB(a,b)then
  return
 local output={}
 for i=1,#a do
  table.insert(output,a[i]/b[i])
 end
 return output
end

function vector::inverse(o)
 return vector::scale(
  o,
  -1
 )
end

function vector::scale(a,n)
 if!vector::safegruard(a)then
  return
 local output={}
 for i=1,#a do
  table.insert(output,a[i]*n)
 end
 return output
end

function vector::exp(a,n)
 if!vector::safegruard(a)then
  return
 local output={}
 for i=1,#a do
  table.insert(output,a[i]^n)
 end
 return output
end

function vector::exp2(o)
 return vector::exp(
  o,
  2
 )
end

function vector_mixdown(o)
 if!vector::safegruard(o)then
  return
 local output=o[1]
 if #a>1 then
  for i=2,#a do
   o[1]=o[1]+o[i]
  end
 end
 return output
end

function vector_length(o)
 return math.sqrt(
  vector_mixdown(
   vector_exp2(
    o
   )
  )
 )
end

function vector_distance(a,b)
 return math.sqrt(
  vector_mixdown(
   vector_exp2(
    vector_subtract(
     a,
     b
    )
   )
  )
 )
end

function vector_dot(a,b)
 return vector_mixdown(
  vector_multiply(
   a,
   b
  )
 )
end

function vector_normalize(o)
 return vector_divide(
  o,
  vector_length(
   o
  )
 )
end

function vector_projection(a,b)
 local o=vector_normalized(
  b
 )
 return vector_scale(
  o,
  vector_dot(
   a,
   o
  )
 )
end