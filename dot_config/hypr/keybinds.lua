---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER"

hl.bind(mainMod .. " + Q", function() hl.dispatch(hl.dsp.exec_cmd(terminal)) end)
hl.bind(mainMod .. " + C", function() hl.dispatch(hl.dsp.window.close()) end)
hl.bind(mainMod .. " + M", function() hl.dispatch(hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")) end)
hl.bind(mainMod .. " + E", function() hl.dispatch(hl.dsp.exec_cmd(fileManager)) end)
hl.bind(mainMod .. " + V", function() hl.dispatch(hl.dsp.window.float({ action = "toggle" })) end)
hl.bind(mainMod .. " + R", function() hl.dispatch(hl.dsp.exec_cmd(menu)) end)
hl.bind(mainMod .. " + P", function() hl.dispatch(hl.dsp.window.pseudo()) end)
hl.bind(mainMod .. " + J", function() hl.dispatch(hl.dsp.layout("togglesplit")) end)

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  function() hl.dispatch(hl.dsp.focus({ direction = "left" })) end)
hl.bind(mainMod .. " + right", function() hl.dispatch(hl.dsp.focus({ direction = "right" })) end)
hl.bind(mainMod .. " + up",    function() hl.dispatch(hl.dsp.focus({ direction = "up" })) end)
hl.bind(mainMod .. " + down",  function() hl.dispatch(hl.dsp.focus({ direction = "down" })) end)

-- Switch workspaces with mainMod + [0-9]
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,         function() hl.dispatch(hl.dsp.focus({ workspace = i })) end)
    hl.bind(mainMod .. " + SHIFT + " .. key, function() hl.dispatch(hl.dsp.window.move({ workspace = i })) end)
end

-- Special workspace
hl.bind(mainMod .. " + S",         function() hl.dispatch(hl.dsp.workspace.toggle_special("magic")) end)
hl.bind(mainMod .. " + SHIFT + S", function() hl.dispatch(hl.dsp.window.move({ workspace = "special:magic" })) end)

-- Scroll through workspaces
hl.bind(mainMod .. " + mouse_down", function() hl.dispatch(hl.dsp.focus({ workspace = "e+1" })) end)
hl.bind(mainMod .. " + mouse_up",   function() hl.dispatch(hl.dsp.focus({ workspace = "e-1" })) end)

-- Mouse dragging/resizing
hl.bind(mainMod .. " + mouse:272", function() hl.dispatch(hl.dsp.window.drag()) end,    { mouse = true })
hl.bind(mainMod .. " + mouse:273", function() hl.dispatch(hl.dsp.window.resize()) end, { mouse = true })

-- Multimedia keys
hl.bind("XF86AudioRaiseVolume", function() hl.dispatch(hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+")) end, { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", function() hl.dispatch(hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-")) end,       { locked = true, repeating = true })
hl.bind("XF86AudioMute",        function() hl.dispatch(hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle")) end,      { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     function() hl.dispatch(hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle")) end,    { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  function() hl.dispatch(hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+")) end,                   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",function() hl.dispatch(hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-")) end,                   { locked = true, repeating = true })

hl.bind("XF86AudioNext",  function() hl.dispatch(hl.dsp.exec_cmd("playerctl next")) end,       { locked = true })
hl.bind("XF86AudioPause", function() hl.dispatch(hl.dsp.exec_cmd("playerctl play-pause")) end, { locked = true })
hl.bind("XF86AudioPlay",  function() hl.dispatch(hl.dsp.exec_cmd("playerctl play-pause")) end, { locked = true })
hl.bind("XF86AudioPrev",  function() hl.dispatch(hl.dsp.exec_cmd("playerctl previous")) end,   { locked = true })
