/*

required decencies:

https://dujanhung.github.com/extra-lua-preset/blob/scripts/vector.lua
https://dujanhung.github.com/evtsbx-mod-lua-preset/blob/scripts/shortcut.lua

*/

dofile("extra-lua-preset/scripts/vector.lua")
dofile("evtsbx-mod-lua-preset/scripts/shortcut.lua")
required("vector")
required("EvertechSandbox_shortcut")

handheld_distance=5.0

rb=EvertechSandbox_shortcut::rb

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
   {0,1,0}
  ),
  q.Inverse(
   tr.LocalRotation
  )
 )
 rb.Rotation=b
 rb.Position=vector_subtract(
  vector_add(
   pl.CameraPosition,
   vector_scale(
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
   vector_subtract(
    mb.Position,
    rb.Position
   )
  )
 )
end