module("evtsbx_mod_lua_preset")
extra_lua_preset.file_root="addons/evtsbx_mod_lua_preset/"
extra_lua_preset.presets={"shortcut/","presets/handheld/"}
extra_lua_preset.script_file="script.lua"
for i in extra_lua_preset.presets do dofile(extra_lua_preset.file_root..extra_lua_preset.presets[i]..extra_lua_preset.script_file)end