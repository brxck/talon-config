### Actions ###
## Clipboard ##
cut that:
	edit.cut()
copy that:
	edit.copy()
(paste that|spark):
	edit.paste()
grab that:
	mouse_click()
	mouse_click()
	edit.copy()
drop that:
  mouse_click()
	mouse_click()
	edit.paste()
## Search ##
find that:
	edit.find()
find next:
	edit.find_next()
## Misc ##
undo that:
	edit.undo()
redo that:
	edit.redo()
file save:
	edit.save()
save as:
	edit.save_all()
file print:
	edit.print()
zoom in:
	edit.zoom_in()
zoom out:
	edit.zoom_out()
zoom reset:
	edit.zoom_reset()

### Edit ###
scratch:
	edit.delete()
line delete:
	edit.delete_line()
whack:
	key(ctrl-backspace)
bump:
  key(ctrl-delete)
indent:
	edit.indent_more()
outdent:
	edit.indent_less()
slap:
	key(enter)
slip:
	edit.line_insert_up()
slide:
	edit.line_insert_down()

### Navigation ###
sauce:
	edit.up()
dunce:
	edit.down()
lease:
	edit.left()
ross:
	edit.right()
pinch:
	edit.page_up()
punch:
	edit.page_down()
struck out:
	edit.file_end()
strike out:
	edit.file_start()
role:
	edit.word_right()
lord:
	edit.word_left()
strike:
	edit.line_start()
struck:
	edit.line_end()

### Selection ###
take none:
	edit.select_none()
take all:
	edit.select_all()
take up:
	edit.extend_up()
take down:
	edit.extend_down()
take ross:
	edit.extend_left()
take lease:
	edit.extend_right()
take start:
	edit.extend_file_start()
take end:
	edit.extend_file_end()
shackle:
	edit.select_line()
take strike:
	edit.extend_line_start()
take struck:
	edit.extend_line_end()
take word:
	edit.select_word()
take lord:
	edit.extend_word_left()
take role:
	edit.extend_word_right()
