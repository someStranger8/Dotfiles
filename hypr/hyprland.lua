
hl.monitor({
    output   = "DP-1",
    mode     = "1920x1080@180",
    position = "auto",
    scale    = "auto",
})

hl.on("hyprland.start", function () 
  hl.exec_cmd("uwsm app -- dunst")
--hl.exec_cmd("uwsm app -- waybar")
  hl.exec_cmd("uwsm app -- awww-daemon")
  hl.exec_cmd("awww restore")
end)


hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")


hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 30,

        border_size = 3,

        col = {
            active_border   = "rgba(ffffffff)",
            inactive_border = "rgba(212121a5)",
        },

        resize_on_border = true,

        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})


hl.curve("easy",           { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

hl.animation({ leaf = "border",        enabled = true,  speed = 6, bezier = "default" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 6, spring = "default", style= "popin 80%"})
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 6, bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 6, bezier = "default" })
hl.animation({ leaf = "borderangle",   enabled = true,  speed = 6, bezier = "default" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 6, bezier = "default", style = "slide" })
hl.animation({ leaf = "specialWorkspace",enabled = true,  speed = 6, bezier = "default", style = "fade"})
hl.animation({ leaf = "windowsMove",   enabled = true,  speed = 6, bezier = "default", style = "slide"})


hl.config({
    dwindle = {
        preserve_split = true,
        smart_split = false,
        force_split = 2,
        default_split_ratio = 1,
        special_scale_factor = 0.8
    },
})

-- save this for later?
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

hl.config({
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo   = true,
    },
})


hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 2,

        sensitivity = -0.8, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
        },
    },
})


local mainMod = "ALT" -- Sets "Windows" key as main modifier

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("alacritty"))
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exit())
hl.bind(mainMod .. " + W", hl.dsp.window.close())
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd("tofi-drun --drun-launch=true"))
hl.bind(mainMod .. " + SHIFT + SPACE", hl.dsp.exec_cmd("matuwall"))
hl.bind(mainMod .. " + CTRL + SPACE", hl.dsp.exec_cmd("wallpaper-set"))
hl.bind(mainMod .. " + CTRL + SHIFT + SPACE", hl.dsp.exec_cmd("cat ~/.local/share/scripts/powermenu | tofi | xargs ~/.config/scripts/powermenu --"))
hl.bind(mainMod .. "+ Home", hl.dsp.exec_cmd("hyprshot -m output"))


-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + h",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j",  hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.move({ direction = "down" }))
hl.bind(mainMod .. " + SHIFT + h",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + l", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + k",    hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + j",  hl.dsp.window.move({ direction = "down" }))


for i = 1, 5 do
    local key = i
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + D",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + D", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.window.pin())
hl.bind(mainMod .. " + F", hl.dsp.window.float())
hl.bind(mainMod .. "+ SHIFT + F", hl.dsp.window.fullscreen({mode = "fullscreen", action = "toggle"}))
hl.bind(mainMod .. " + S", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen({mode = "maximized", action="toggle"}))
hl.bind(mainMod .. " + TAB", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + SHIFT + TAB",   hl.dsp.focus({ workspace = "e-1" }))
--hl.bind("SUPER + Tab", hl.dsp.layout("cyclenext"))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })


local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.workspace_rule({workspace = "1", persistent = true})
hl.workspace_rule({workspace = "2", persistent = true})
hl.workspace_rule({workspace = "3", persistent = true})
hl.workspace_rule({workspace = "4", persistent = true})
hl.workspace_rule({workspace = "5", persistent = true})

hl.window_rule({
    name  = "pseudotile all",
    
    match = { class = ".*" },
    pseudo = 1
})

hl.window_rule({
  name = "persistent size",

  match = {float = 1},
  persistent_size = true,
})

hl.window_rule({
  name = "no border on inactive",

  match = {focus = 0},
  border_size = 0,
})
