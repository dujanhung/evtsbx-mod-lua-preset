function vector_add(a,b)
 return {a[1]+b[1],a[2]+b[2],a[3]+b[3]}
end

function vector_subtract(a,b)
 return {a[1]-b[1],a[2]-b[2],a[3]-b[3]}
end

function vector_scale(a,n)
 return {a[1]*n,a[2]*n,a[3]*n}
end

function vector_exp(a,n)
 return {a[1]^n,a[2]^n,a[3]^n}

function vector_mixdown(a)
 return a[1]+a[2]+a[3]
end

function vector_distance(a,b)
 return math.sqrt(vector_mixdown(vector_exp(vector_subtract(a,b),2)))
end

function vector_dot(a,b)
 return a[1]*b[1]+a[2]*b[2]+a[3]*b[3]
end

function Normalised(a) local l = math.sqrt(a[1]^2 + a[2]^2 + a[3]^2) return {a[1]/l, a[2]/l, a[3]/l} end
function Magnitude(a) return math.sqrt(a[1]^2+a[2]^2+a[3]^2) end
function Projection(a, b) local d = Normalised(b) local l = Dot(a, d) return ScaleVector(d, l) end