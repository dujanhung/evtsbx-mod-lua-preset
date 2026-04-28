module("evtsbx_mod_lua_preset")
evtsbx_mod_lua_preset.file_root="addons/evtsbx_mod_lua_preset/"
evtsbx_mod_lua_preset.presets={"shortcut/","presets/handheld/"}
evtsbx_mod_lua_preset.script_file="script.lua"
for i in evtsbx_mod_lua_preset.presets do dofile(evtsbx_mod_lua_preset.file_root..i..evtsbx_mod_lua_preset.script_file)end