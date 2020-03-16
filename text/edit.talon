###  Actions  ###
## Clipboard ##
action(edit.cut):
	key(ctrl-x)
action(edit.copy):
	key(ctrl-c)
action(edit.paste):
	key(ctrl-v)
action(edit.copy_cursor_word):
	mouse_click()
	mouse_click()
	edit.copy()
action(edit.replace_cursor_word):
	mouse_click()
	mouse_click()
	edit.paste()
## Search ##
action(edit.find):
	key(ctrl-f)
action(edit.find_next):
	key(f3)
## Misc ##
action(edit.undo):
	key(ctrl-z)
action(edit.redo):
	key(ctrl-y)
action(edit.save):
	key(ctrl-s)
action(edit.save_as):
	key(ctrl-shift-s)
action(edit.print):
	key(ctrl-p)
action(edit.zoom_in):
	key(ctrl-+)
action(edit.zoom_out):
	key(ctrl--)
action(edit.zoom_reset):
	key(ctrl-0)

### Editing ###
action(edit.delete):
	key(backspace)
action(edit.line_delete):
	edit.select_line()
	edit.delete()
action(edit.word_delete_left):
	actions.edit.extend_word_left()
	actions.edit.delete()
action(edit.word_delete_right):
	actions.edit.extend_word_right()
	actions.edit.delete()
action(edit.indent_more):
	key(home tab)
action(edit.indent_less):
	key(home delete)
action(edit.line_insert_up):
	key(home enter up)
action(edit.line_insert_down):
	key(end enter)

### Navigation ###
action(edit.up):
	key(up)
action(edit.down):
	key(down)
action(edit.left):
	key(left)
action(edit.right):
	key(right)
action(edit.page_up):
	key(pageup)
action(edit.page_down):
	key(pagedown)
action(edit.file_end):
	key(ctrl-end)
action(edit.file_start):
	key(ctrl-home)
action(edit.word_left):
	key(ctrl-left)
action(edit.word_right):
	key(ctrl-right)
action(edit.line_start):
	key(home)
action(edit.line_end):
	key(end)

### Selection ###
action(edit.select_none):
	key(right)
action(edit.select_all):
	key(ctrl-a)

action(edit.extend_up):
	key(shift-end shift-up)
action(edit.extend_down):
	key(shift-home shift-down)
action(edit.extend_left):
	key(shift-left)
action(edit.extend_right):
	key(shift-right)

action(edit.extend_file_start):
	key(shift-ctrl-home)
action(edit.extend_file_end):
	key(shift-ctrl-end)

action(edit.select_line):
	key(end shift-home)
action(edit.extend_line_start):
	key(shift-home)
action(edit.extend_line_end):
	key(shift-end)
action(edit.extend_word_left):
	key(ctrl-shift-left)
action(edit.extend_word_right):
	key(ctrl-shift-right)
