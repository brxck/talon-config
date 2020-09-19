kick: mouse_click(0)
psychic: mouse_click(1)
mid kick: mouse_click(2)
	
wheel down: mouse_scroll(20)
wheel up: mouse_scroll(-20)

<user.modifiers> kick: 
	key("{modifiers}:down")
	mouse_click(0)
	key("{modifiers}:up")
<user.modifiers> psychic: 
	key("{modifiers}:down")
	mouse_click(1)
	key("{modifiers}:up")

wheel left: mouse_scroll(0, -40)
wheel left here:
    user.mouse_move_center_active_window()
    mouse_scroll(0, -40)
wheel tiny left: mouse_scroll(0, -20)
wheel tiny left here:
    user.mouse_move_center_active_window()
    mouse_scroll(0, -20)
wheel right: mouse_scroll(0, 40)
wheel right here:
    user.mouse_move_center_active_window()
    mouse_scroll(0, 40)
wheel tiny right: mouse_scroll(0, 20)

mouse drag: user.mouse_drag()
