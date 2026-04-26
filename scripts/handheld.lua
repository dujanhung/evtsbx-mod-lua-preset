/*

required decencies:

evtsbx-mod-lua-lib/built-in/shortcut.lua
evtsbx-mod-lua-lib/built-in/vector.lua
evtsbx-mod-lua-lib/third-party/is_detached_from_ground.lua

*/

handheld_distance=5.0

function fixedUpdate()
 handheld_tick()
end

function handheld_tick()
 if!is_detached_from_ground() then
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