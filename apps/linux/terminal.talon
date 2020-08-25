os: linux
tag: terminal
-
tag(): user.file_manager
#todo: generic tab commands
#tag(): tabs
action(edit.page_down):
  key(shift-pagedown)
action(edit.page_up):
  key(shift-pageup)
action(edit.paste):
  key(ctrl-shift-v)
action(edit.copy):
  key(ctrl-shift-c)

scroll up:
  key(shift-pageup)
scroll down:
  key(shift-pagedown)
run last:
  key(up)
  key(enter)
rerun <user.text>:
  key(ctrl-r)
  insert(text)
rerun search:
  key(ctrl-r)
kill all:
  key(ctrl-c)
