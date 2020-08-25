window up: 
  key(super-up)
window down: 
  key(super-down)
window left: 
  key(super-left)
window right: 
  key(super-right)

monitor left: 
  key(shift-super-left)
monitor right: 
  key(shift-super-right)

# work down: 
#   key(super-pgdown)
# work up: 
#   key(super-pgup)
work send <digits>:
  key(shift:down)
  key(super:down)
  key("{digits}")
  key(super:up)
  key(shift:up)

work <digits>:
  key(super:down)
  key("{digits}")
  key(super:up)

# send <nnavi10>: 
# 	key(shift-super-%(nnavi10)d)

quake (down|it):
  user.system_command("tdrop2 kitty down")
quake up:
  user.system_command("tdrop2 kitty up")
quake left:
  user.system_command("tdrop2 kitty left")
quake right:
  user.system_command("tdrop2 kitty right")
quake full:
  user.system_command("tdrop2 kitty full")