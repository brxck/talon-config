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
insert: 
	insert("insert('')")
	edit.left()
	edit.left()
key:
	insert('key()')
	edit.left()
<user.modifiers> key: "{modifiers}"

action:
	insert("action():")
	edit.left()
	
