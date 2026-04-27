required("extra_math")
module("vector")

function vector::safeguard(o)
 if type(o)!="table"then
  return false
 end
 for i=1,#o do
  local w=type(a[i])
  if w!="int"and w!="float"then
   return false
  end
 end
 return true
end

function vector::safeguard_AB(a,b)
 if!vector::safeguard(a)then
  return false
 end
 if!vector::safeguard(b)then
  return false
 end
 if #a!=#b then
  return false
 end
 return true
end

function vector::add(a,b)
 if!vector::safegruard_AB(a,b)then
  return
 end
 local output={}
 for i=1,#a do
  table.insert(output,a[i]+b[i])
 end
 return output
end

function vector::subtract(a,b)
 if!vector::safegruard_AB(a,b)then
  return
 end
 local output={}
 for i=1,#a do
  table.insert(output,a[i]-b[i])
 end
 return output
end

function vector::multiply(a,b)
 if!vector::safegruard_AB(a,b)then
  return
 end
 local output={}
 for i=1,#a do
  table.insert(output,a[i]*b[i])
 end
 return output
end

function vector::divide(a,b)
 if!vector::safegruard_AB(a,b)then
  return
 end
 local output={}
 for i=1,#a do
  table.insert(output,a[i]/b[i])
 end
 return output
end

function vector::scale(a,n)
 if!vector::safegruard(a)then
  return
 end
 local output={}
 for i=1,#a do
  table.insert(output,a[i]*n)
 end
 return output
end

function vector::exp(a,n)
 if!vector::safegruard(a)then
  return
 end
 local output={}
 for i=1,#a do
  table.insert(output,a[i]^n)
 end
 return output
end

function vector::mixdown(o)
 if!vector::safegruard(o)then
  return
 end
 local output=o[1]
 if #a>1 then
  for i=2,#a do
   o[1]=o[1]+o[i]
  end
 end
 return output
end

function vector::inverse(o)
 return vector::scale(
  o,
  -1
 )
end

function vector::exp2(o)
 return vector::exp(
  o,
  2
 )
end

function vector::length(o)
 return math.sqrt(
  vector::mixdown(
   vector::exp2(
    o
   )
  )
 )
end

function vector::distance(a,b)
 return math.sqrt(
  vector::mixdown(
   vector::exp2(
    vector::subtract(
     a,
     b
    )
   )
  )
 )
end

function vector::dot(a,b)
 return vector::mixdown(
  vector::multiply(
   a,
   b
  )
 )
end

function vector::normalize(o)
 return vector::divide(
  o,
  vector::length(
   o
  )
 )
end

function vector::projection(a,b)
 local o=vector::normalized(
  b
 )
 return vector::scale(
  o,
  vector::dot(
   a,
   o
  )
 )
end