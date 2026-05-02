required("extra-lua-preset")
required("EvertechSandbox_shortcut")
local EvertechSandbox_preset_handheld={}
EvertechSandbox_preset_handheld.distance=5.0
function EvertechSandbox_preset_handheld.tick()if!rb then return end if!rb.IsKinematic then rb.IsKinematic=true end local o=q.Multiply(q.LookRotation(cd,{0.0,1.0,0.0}),q.Inverse(trlr));rb.Rotation=o;rb.Position=vector.subtract(vector.add(cp,vector.scale(cd,EvertechSandbox_preset_handheld.distance)),q.MultiplyByVector(q.Multiply(o,q.Inverse(rbr)),vector.subtract(mbp,rbp)))end
return EvertechSandbox_preset_handheld