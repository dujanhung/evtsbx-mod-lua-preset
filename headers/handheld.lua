/*

required decencies:

https://dujanhung.github.com/extra-lua-preset/blob/variants/vector.lua
https://dujanhung.github.com/evtsbx-mod-lua-preset/blob/shortcuts/EvertechSandbox_shortcut.lua
https://dujanhung.github.com/evtsbx-mod-lua-preset/blob/configs/handheld.lua

*/

dofile(
 "extra-lua-preset/variants/vector.lua"
)
dofile(
 "evtsbx-mod-lua-preset/shortcuts/EvertechSandbox_shortcut.lua"
)
dofile(
 "evtsbx-mod-lua-preset/configs/handheld.lua"
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