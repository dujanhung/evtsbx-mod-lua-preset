local distance_from_player=5.0

function handheld_tick()
 if!rb.IsKinematic then
  rb.IsKinematic=true
 local dir=pl.CameraDirection
 local targRot=q.Multiply(q.LookRotation(dir,{0,1,0}),q.Inverse(tr.LocalRotation))
 local targPos=vector_add(pl.CameraPosition,vector_scale(dir,distance_from_player))
 local offsetVec=vector_subtract(mb.Position, rb.Position)
 local finalRotation=q.Multiply(targRot,q.Inverse(rb.Rotation))
 local newOffsetVec=q.MultiplyByVector(finalRotation,offsetVec)
 local offsetPos=SubtractVectors(targPos, newOffsetVec)	
 rb.Rotation=targRot
 rb.Position=offsetPos
end