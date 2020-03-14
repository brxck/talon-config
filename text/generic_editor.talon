find it:
	edit.find()
find next:
	edit.find_next()

save:
	edit.save()
spark:
	edit.paste()
cut:
	edit.cut()
copy: 
	edit.copy()
grab: 
	edit.copy_mouse_word()
drop:
	edit.replace_mouse_word()

lore: 
	edit.word_left()
role: 
	edit.word_right()
lease: 
	edit.left()
ross: 
	edit.right()
sauce: 
	edit.up()
dunce: 
	edit.down()
strike: 
	edit.line_start()
struck: 
	edit.line_end()
strike out: 
	edit.file_end()
struck out: 
	edit.file_start()
punch:
	edit.page_down()
pinch:
	edit.page_up()

# selecting
shackle: 
	edit.line_start()
	edit.extend_line_end()
lorit: 
	edit.extend_left()
rolit: 
	edit.extend_right()
sock: 
	edit.extend_line_up()
dock: 
	edit.extend_line_down()
lorex:
	edit.extend_word_left()
rolex: 
	edit.extend_word_right()
strikex: 
	edit.extend_line_start()
struckex: 
	edit.extend_line_end()
strikex out: 
	edit.extend_file_start()
struckex out: 
	edit.extend_file_end()

# deleting
clear line: 
	edit.delete_line()
clear left: 
	edit.extend_line_start()
	edit.delete()
clear right: 
	edit.extend_line_end()
	edit.delete()
clear up: 
	edit.extend_line_up()
	edit.delete()
clear down: 
	edit.extend_line_down()
	edit.delete()
whack: 
	edit.extend_word_left()
	edit.delete()
bump: 
	edit.extend_word_right()
	edit.delete()