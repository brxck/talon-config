### Actions ###()
## Clipboard ##()
cut:
	edit.cut()
copy:
	edit.copy()
spark:
	edit.paste()
grab:
	edit.copy_cursor_word()
drop:
  edit.replace_cursor_word()
## Search ##()
find:
	edit.find()
find next:
	edit.find_next()
## Misc ##()
undo:
	edit.undo()
redo:
	edit.redo()
save:
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

### Editing ###()
scratch:
	edit.delete()
line delete:
	edit.line_delete()
whack:
  edit.word_delete_left()
bump:
  edit.word_delete_right()
indent:
	edit.indent_more()
outdent:
	edit.indent_less()
slip:
	edit.line_insert_up()
slide:
	edit.line_insert_down()


### Navigation ###()
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
strike in:
	edit.file_start()
role:
	edit.word_left()
lore:
	edit.word_right()
strike:
	edit.line_start()
struck:
	edit.line_end()

### Selection ###()
select none:
	edit.select_none()
select all:
	edit.select_all()
saucex:
	edit.extend_up()
duncex:
	edit.extend_down()
lore it:
	edit.extend_left()
role it:
	edit.extend_right()
select file start:
	edit.extend_file_start()
select file end:
	edit.extend_file_end()
shackle:
	edit.select_line()
strikex:
	edit.extend_line_start()
struckex:
	edit.extend_line_end()
word select:
	edit.select_word()
lorex:
	edit.extend_word_left()
rolex:
	edit.extend_word_right()
