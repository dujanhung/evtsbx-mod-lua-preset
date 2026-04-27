module("safeguard")

function safeguard::is_boolean(o)
 if type(
  o
 )!="boolean"then
  return false
 end
 return true
end

function safeguard::is_number(o)
 if type(
  o
 )!="number"then
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

function safeguard::is_table(o)
 if type(
  o
 )!="table"then
  return false
 end
 return true
end

function safeguard::is_function(o)
 if type(
  o
 )!="function"then
  return false
 end
 return true
end

function safeguard::is_vector(o)
 if!safeguard::is_table(
  o
 )then
  return false
 end
 for i=1,#o do
  if!safeguard::is_number(
   a[i]
  )then
   return false
  end
 end
 return true
end

function safeguard::is_vector_AB(a,b)
 local f
 f=function(o)
  if!safeguard::is_vector(o)then
   return false
  end
  return true
 end
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