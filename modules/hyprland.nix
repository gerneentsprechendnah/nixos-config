
{ config, home-manager, ... }:
{ 
users.users.stephan.isNormalUser = true;
home-manager.users.stephan = {
/* The home.stateVersion option does not have a default and must be set */
home.stateVersion = "23.11";

wayland.windowManager.hyprland = {
  enable = true;
  extraConfig = ''
    monitor = DP-1, 3840x2160, 3840x0, 1
    monitor = DP-2, 3840x2160, 0x0, 1
    
    $fileManager = dolphin
    $menu = rofi -show drun
    $terminal = kitty
    
    
    input {
    	kb_layout = de
    	kb_variant = 
    	kb_model = 
    	kb_options =
    	kb_rules =
    	kb_file = 
    	follow_mouse = 1
    	}
    general {
        gaps_in = 5
    	gaps_out = 20
    	border_size = 2
    	col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
    	col.inactive_border = rgba(595959aa)
    	layout = dwindle
    	allow_tearing = false
    	}
    decoration {
    	rounding = 10
    	blur {
        	enabled = true
        	size = 3
        	passes = 1
    		}
    drop_shadow = yes
    shadow_range = 4
    shadow_render_power = 3
    col.shadow = rgba(1a1a1aee)
}

animations {
    enabled = yes
    bezier = myBezier, 0.05, 0.9, 0.1, 1.05
    animation = windows, 1, 7, myBezier
    animation = windowsOut, 1, 7, default, popin 80%
    animation = border, 1, 10, default
    animation = borderangle, 1, 8, default
    animation = fade, 1, 7, default
    animation = workspaces, 1, 6, default
}

dwindle {
    pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
    preserve_split = yes # you probably want this
}

master {
    new_is_master = true
}

gestures {
    workspace_swipe = off
}



device:epic-mouse-v1 {
    sensitivity = -0.5
}

windowrulev2 = nomaximizerequest, class:.*

device:epic-mouse-v1 {
    sensitivity = -0.5
}
$mainMod = Mod4
bind = $mainMod, Return, exec, alacritty
bind = $mainMod, e, exec, nautilus
bind = $mainMod, Q, killactive, 
bind = $mainMod, M, exit,
bind = $mainMod, V, togglefloating, 
bind = $mainModCONTROL, Return, exec, $menu
bind = $mainMod, P, pseudo, # dwindle
bind = $mainMod, J, togglesplit, # dwindle

# Move focus with mainMod + arrow keys
bind = $mainMod, left, movefocus, l
bind = $mainMod, right, movefocus, r
bind = $mainMod, up, movefocus, u
bind = $mainMod, down, movefocus, d

# Switch workspaces with mainMod + [0-9]
bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

# Move active window to a workspace with mainMod + SHIFT + [0-9]
bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9
bind = $mainMod SHIFT, 0, movetoworkspace, 10

# Example special workspace (scratchpad)
bind = $mainMod, S, togglespecialworkspace, magic
bind = $mainMod SHIFT, S, movetoworkspace, special:magic

# Scroll through existing workspaces with mainMod + scroll
bind = $mainMod, mouse_down, workspace, e+1
bind = $mainMod, mouse_up, workspace, e-1

# Move/resize windows with mainMod + LMB/RMB and dragging
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow
  '';
  settings = {
  exec-once = [
        "nm-applet"
        "swaybg -i ~/Bilder/mountain-sunrise.jpg -m fill"
        "waybar"
        "dunst"
      ];
    

  
     
    };
  };

};
}