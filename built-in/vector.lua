module("vector")

function vector::safeguard(a,b)
 if type(a)!="table"then
  return false
 end
 if type(b)!="table"then
  return false
 if #a!=#b then
  return false
 end
 for i=1,#a do
  local o=type(a[i])
  if o!="int"and o!="float"
   return false
  end
  o=type(b[i])
  if o!="int"and o!="float"
   return false
  end
 end
 return true
end

function vector::add(a,b)
 if!vector.safegruard(a,b)then
  return
 local output={}
 for i=1,#a do
  table.insert(output,a[i]+b[i])
 end
 return output
end

function vector_subtract(a,b)
 if!vector_safegruard(a,b)then
  return
 local output={}
 for i=1,#a do
  table.insert(output,a[i]-b[i])
 end
 return output
end

function vector_multiply(a,b)
 if!vector_safegruard(a,b)then
  return
 local output={}
 for i=1,#a do
  table.insert(output,a[i]*b[i])
 end
 return output
end

function vector_divide(a,b)
 if!vector_safegruard(a,b)then
  return
 local output={}
 for i=1,#a do
  table.insert(output,a[i]/b[i])
 end
 return output
end

function vector_inverse(o)
 return vector_scale(
  o,
  -1
 )
end

function vector_scale(a,n)
 return {
  a[1]*n,
  a[2]*n,
  a[3]*n
 }
end

function vector_exp(a,n)
 return {
  a[1]^n,
  a[2]^n,
  a[3]^n
 }
end

function vector_exp2(o)
 return vector_exp(
  o,
  2
 )
end

function vector_mixdown(o)
 return o[1]+o[2]+o[3]
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