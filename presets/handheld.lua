required("vector")
required("EvertechSandbox_shortcut")
module("EvertechSandbox_preset_handheld")
EvertechSandbox_preset_handheld.distance=5.0
function fixedUpdate()EvertechSandbox_preset_handheld.tick()end
function EvertechSandbox_preset_handheld.tick()if!rb then return end if!rb.IsKinematic then rb.IsKinematic=true end local b=q.Multiply(q.LookRotation(cd,{0.0,1.0,0.0}),q.Inverse(tr.LocalRotation));rb.Rotation=b;rb.Position=vector.subtract(vector.add(pl.CameraPosition,vector.scale(cd,EvertechSandbox_preset_handheld.distance)),q.MultiplyByVector(q.Multiply(b,q.Inverse(rb.Rotation)),vector.subtract(mb.Position,rb.Position)))end