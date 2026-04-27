/*

required decencies:

https://dujanhung.github.com/evtsbx-mod-lua-preset/blob/headers/handheld.lua"

*/

dofile(
 "evtsbx-mod-lua-preset/headers/handheld.lua"
)

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