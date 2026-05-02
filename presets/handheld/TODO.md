# "Evertech Sandbox" handheld script

moves this block to player's crosshair.

### previews

___
___

# methods

## <code>handheld.tick()</code>

```lua
handheld.tick()
```

update block's transform.

> [!IMPORTANT]
> you should detach this block from the ground.

### example

```lua
function fixedUpdate()
 handheld.tick()
end
```