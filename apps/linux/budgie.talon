window <user.arrow>:
  key(super:down)
  key(arrow)
  key(super:up)

monitor <user.arrow>: 
  key(shift:down super:down)
  key(arrow)
  key(super:up shift:up)

work send <digits>:
  key(shift:down super:down)
  key("{digits}")
  key(shift:up super:up)

work <digits>:
  key(super:down)
  key("{digits}")
  key(super:up)


quake <user.arrow>:
  user.system_command("tdrop2 kitty {arrow}")
quake up:
  user.system_command("tdrop2 kitty {arrow}")
quake left:
  user.system_command("tdrop2 kitty {arrow}")
quake right:
  user.system_command("tdrop2 kitty {arrow}")
quake full:
  user.system_command("tdrop2 kitty {arrow}")