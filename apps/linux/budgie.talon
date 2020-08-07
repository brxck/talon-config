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
send down: 
  key(shift-super-pgdown)
send up: 
  key(shift-super-pgup)
# work <nnavi10>: 
# 	key(super-%(nnavi10)d)
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