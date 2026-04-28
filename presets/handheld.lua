required("vector")
required("EvertechSandbox_shortcut")
module("EvertechSandbox_preset_handheld")

mb=EvertechSandbox_shortcut.mb
rb=EvertechSandbox_shortcut.rb
tr=EvertechSandbox_shortcut.tr
pl=EvertechSandbox_shortcut.pl
q=EvertechSandbox_shortcut.q

EvertechSandbox_preset_handheld.distance=5.0

function fixedUpdate()
 handheld_tick()
end

function handheld_tick()
 if!rb then
  return
 if!rb.IsKinematic then
  rb.IsKinematic=true
 local a=pl.CameraDirection
 local b=q.Multiply(
  q.LookRotation(
   a,
   {0.0,1.0,0.0}
  ),
  q.Inverse(
   tr.LocalRotation
  )
 )
 rb.Rotation=b
 rb.Position=vector.subtract(
  vector.add(
   pl.CameraPosition,
   vector.scale(
    a,
    handheld_distance
   )
  ),
  q.MultiplyByVector(
   q.Multiply(
    b,
    q.Inverse(
     rb.Rotation
    )
   ),
   vector.subtract(
    mb.Position,
    rb.Position
   )
  )
 )
end