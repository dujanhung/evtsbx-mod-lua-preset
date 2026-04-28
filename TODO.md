before using this template, you should:

- remove all MD files,
- remove `.github/*` folder,
- nest this repo inside your MOD folder.

example:

```
ROOT/addons/evtsbx-mod-lua-preset/*
```

required presets:

- https://github.com/dujanhung/extra-lua-preset

make scripts executable via:

```lua
dofile("addons/evtsbx-mod-lua-preset/orchestrator/ALL.lua")
```