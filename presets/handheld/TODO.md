# "Evertech Sandbox" handheld module

moves this block to player's crosshair.

## syntax

```lua
handheld
```

access to `handheld` module.

## previews

___
___

# methods

## <code>tick()</code>

```lua
handheld.tick()
```

update block's transform.

> [!NOTE]
> you should detach this block from the ground. otherwise, it won't work.

### example

```lua
function fixedUpdate()
 handheld.tick()
end
```