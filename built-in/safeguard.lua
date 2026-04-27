module("safeguard")

function safeguard::is_bool(o)
 if type(
  o
 )!="bool"then
  return false
 end
 return true
end

function safeguard::is_int(o)
 if type(
  o
 )!="int"then
  return false
 end
 return true
end

function safeguard::is_float(o)
 if type(
  o
 )!="float"then
  return false
 end
 return true
end

function safeguard::is_string(o)
 if type(
  o
 )!="string"then
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