module("safeguard")

function safeguard::vector(o)
 if type(
  o
 )!="table"then
  return false
 end
 for i=1,#o do
  local w=a[i]
  if type(
   w
  )!="int"and type(
   w
  )!="float"then
   return false
  end
 end
 return true
end

function safeguard::vector_AB(a,b)
 if!safeguard::vector(a)then
  return false
 end
 if!safeguard::vector(b)then
  return false
 end
 if #a!=#b then
  return false
 end
 return true
end