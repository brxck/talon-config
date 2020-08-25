mode: user.talon
mode: command 
and code.language: talon
-
tag(): user.code_operators
tag(): user.code_comment
action(user.code_operator_and): " and "
action(user.code_operator_or): " or "
action(user.code_operator_subtraction): " - "
action(user.code_operator_addition): " + "
action(user.code_operator_multiplication): " * "
action(user.code_operator_division): " / "
action(user.code_operator_assignment): " = "
action(user.code_comment): "#"

dot talon: insert(".talon")
#defintion blocks for the context
action block:
	insert("action():")
	edit.left()
	edit.left()
setting block:
	insert("settings():\n\t")
#context requirements
win require:
	insert("os: windows\n")
mac require:
	insert("os: mac\n")
lunix require:
	insert("os: linux\n")
title require:
	insert("win.title: ")
app require:
	insert("app: ")
tag require:
	insert("tag: ")
tag set:
	insert("tag(): ")
#commands for dictating key combos
key <user.key> over: "{key}"
key <user.modifiers> over: "{modifiers}"
key <user.any> over: "{any}"
#funk commands, consistent with other languages
toggle funk: user.code_toggle_functions()
funk <user.code_functions>: 
    old_clip = clip.text()
    user.code_insert_function(code_functions, "")
    clip.set_text(old_clip)
funk cell <number>: 
    old_clip = clip.text()
    user.code_select_function(number - 1, "")
    clip.set_text(old_clip)
funk wrap <user.code_functions>: 
    old_clip = clip.text()
    edit.copy()
    sleep(100ms)
    user.code_insert_function(code_functions, clip.text())
    clip.set_text(old_clip)
funk wrap <number>: 
    old_clip = clip.text()
    edit.copy()
    sleep(100ms)
    user.code_select_function(number - 1, clip.text())
	clip.set_text(old_clip)
	
