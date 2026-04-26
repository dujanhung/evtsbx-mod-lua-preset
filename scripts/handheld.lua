handheld_distance=5.0

function handheld_tick()
 if!rb.IsKinematic then
  rb.IsKinematic=true
 local a=pl.CameraDirection
 local d=vector_subtract(mb.Position,rb.Position)
 local e=q.Multiply(b,q.Inverse(rb.Rotation))
 local f=q.MultiplyByVector(e,d)
 rb.Rotation=q.Multiply(q.LookRotation(a,{0,1,0}),q.Inverse(tr.LocalRotation))
 rb.Position=vector_subtract(vector_add(pl.CameraPosition,vector_scale(a,handheld_distance)),f)
end