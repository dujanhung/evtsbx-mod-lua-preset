function handheld_tick()
 if!rb.IsKinematic then
  rb.IsKinematic=true
 local dir=pl.CameraDirection
 local targRot= q.Multiply(q.LookRotation(dir,{0,1,0}), q.Inverse(tr.LocalRotation))
 local	targPos = AddVectors(pl.CameraPosition, ScaleVector(dir, distanceFromPlayer))
 local	offsetVec = SubtractVectors(mb.Position, rb.Position)
 local	finalRotation = q.Multiply(targRot, q.Inverse(rb.Rotation))
 local	newOffsetVec = q.MultiplyByVector(finalRotation, offsetVec)
 local	offsetPos = SubtractVectors(targPos, newOffsetVec)	
 rb.Rotation=targRot
 rb.Position=offsetPos
end