arrow: "->"
dub arrow: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"
(a sign|asign|assign): " = "
minus: " - "
plus: " + "
times: " * "
empty dubstring:
    '""'
    key(left)
empty escaped (dubstring|dub quotes):
    '\\"\\"'
    key(left)
    key(left)
empty string:
    "''"
    key(left)
empty escaped string:
    "\\'\\'"
    key(left)
    key(left)
(inside parens | args):
	insert("()")
	key(left)
inside (squares | list): 
	insert("[]") 
	key(left)
inside (bracket | braces): 
	insert("{}") 
	key(left)
inside percent: 
	insert("%%") 
	key(left)
inside quotes:
	insert('""')
	key(left)
angle that: 
    text = edit.selected_text()
    user.paste("<{text}>")
(bracket | brace) that: 
    text = edit.selected_text()
    user.paste("{{{text}}}")
(parens | args) that: 
    text = edit.selected_text()
    user.paste("({text})")
percent that: 
    text = edit.selected_text()
    user.paste("%{text}%")
quote that:
    text = edit.selected_text()
    user.paste('"{text}"')

divide: " / "
modulus: " % "
minus equals: " -= "
plus equals: " += "
greater: " > "
lesser: " < "
equal: " == "
not equal: " != "
greater equal: " >= "
less equal: " <= "
to power: " ** "
lodge and: " && "
lodge or: " || "
bit and: " & "
bit or: " | "
ex or: " ^ "
shift left: " << "
shift right: " >> "
and equal: " &= "
or equals: " |= "
