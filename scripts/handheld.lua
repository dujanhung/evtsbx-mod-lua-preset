handheld_distance=5.0

function handheld_tick()
 if!rb.IsKinematic then
  rb.IsKinematic=true
 local a=pl.CameraDirection
 local b=q.Multiply(q.LookRotation(a,{0,1,0}),q.Inverse(tr.LocalRotation))
 local c=vector_add(pl.CameraPosition,vector_scale(a,handheld_distance))
 local d=vector_subtract(mb.Position,rb.Position)
 local e=q.Multiply(b,q.Inverse(rb.Rotation))
 local f=q.MultiplyByVector(e,d)
 local g=SubtractVectors(c,f)	
 rb.Rotation=b
 rb.Position=g
end