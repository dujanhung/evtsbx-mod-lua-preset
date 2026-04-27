module("safeguard")

function safeguard::is_string(o)
 if type(
  o
 )!="str"then
  return false
 end
 return true
end

function safeguard::is_vector(o)
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

function safeguard::is_vector_AB(a,b)
 if!safeguard::is_vector(a)then
  return false
 end
 if!safeguard::is_vector(b)then
  return false
 end
 if #a!=#b then
  return false
 end
 return true
end