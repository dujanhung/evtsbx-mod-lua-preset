function vector_add(a,b)
 return {a[1]+b[1],a[2]+b[2],a[3]+b[3]}
end

function vector_subtract(a,b)
 return {a[1]-b[1],a[2]-b[2],a[3]-b[3]}
end

function vector_multiply(a,b)
 return {a[1]*b[1],a[2]*b[2],a[3]*b[3]}
end

function vector_divide(a,b)
 return {a[1]/b[1],a[2]/b[2],a[3]/b[3]}
end

function vector_scale(a,n)
 return {a[1]*n,a[2]*n,a[3]*n}
end

function vector_exp(a,n)
 return {a[1]^n,a[2]^n,a[3]^n}

function vector_mixdown(a)
 return a[1]+a[2]+a[3]
end

function vector_length(a)
 return math.sqrt(vector_mixdown(vector_exp(a,2)))
end

function vector_distance(a,b)
 return math.sqrt(vector_mixdown(vector_exp(vector_subtract(a,b),2)))
end

function vector_dot(a,b)
 return vector_mixdown(vector_multiply(a,b))
end

function vector_normalize(a)
 return vector_divide(a,vector_length(a))
end

function vector_projection(a,b)
 local o=vector_normalized(b)
 return vector_scale(o,vector_dot(a,o))
end