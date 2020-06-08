question [mark]: "?"
(downscore | underscore): "_"
double dash: "--"
(bracket | brack | left bracket): "{"
(rbrack | are bracket | right bracket): "}"
triple quote: "'''"
(dot dot | dotdot): ".."
#ellipses: "…"
ellipses: "..."
(comma and | spamma): ", "
plus: "+"
arrow: "->"
dub arrow: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"
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
thin arrow: "->"
arrow: "=>"
assign: " = "
minus: " - "
plus: " + "
times: " * "
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
