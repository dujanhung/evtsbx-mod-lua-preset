/*

required decencies:

https://dujanhung.github.com/extra-lua-preset/blob/variants/vector.lua
https://dujanhung.github.com/evtsbx-mod-lua-preset/blob/shortcuts/EvertechSandbox_shortcut.lua

*/

dofile(
 "headers/handheld.lua"
)
required(
 "vector"
)
required(
 "EvertechSandbox_shortcut"
)

mb=EvertechSandbox_shortcut::mb
rb=EvertechSandbox_shortcut::rb
tr=EvertechSandbox_shortcut::tr
pl=EvertechSandbox_shortcut::pl
q=EvertechSandbox_shortcut::q

handheld_distance=5.0

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
 rb.Position=vector::subtract(
  vector::add(
   pl.CameraPosition,
   vector::scale(
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
   vector::subtract(
    mb.Position,
    rb.Position
   )
  )
 )
end