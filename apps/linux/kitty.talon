app: kitty
os: linux
-
tag(): terminal
tag(): user.tabs

scroll line up:
  key(ctrl-shift-up)

scroll line down:
  key(ctrl-shift-down)

pinch:
  key(ctrl-shift-pageup)

punch:
  key(ctrl-shift-pagedown)

strike out:
  key(ctrl-shift-home)

struck out:
  key(ctrl-shift-end)

action(app.tab_open):
  key(ctrl-shift-t)
  
action(app.tab_close):
  key(ctrl-shift-q)
  
action(app.tab_next):
  key(ctrl-shift-right)
  
action(app.tab_previous):
  key(ctrl-shift-left)
  
layout switch:
  key(ctrl-shift-l)
  
tab forward:
  key(ctrl-shift-.)
  
tab backward:
  key(ctrl-shift-,)
  
tab title:
  key(ctrl-shift-alt-t)
  
pane new:
  key(ctrl-shift-enter)
  
window new:
  key(ctrl-shift-n)
  
pane close:
  key(ctrl-shift-w)
  
pane next:
  key(ctrl-shift-])
  
pane previous:
  key(ctrl-shift-[)
  
pane forward:
  key(ctrl-shift-f)
  
pane backward:
  key(ctrl-shift-b)

pane top:
  key(ctrl-shift-`)

pane <number>:
  key(ctrl-shift-{number})