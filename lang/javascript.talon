code.language: javascript
-

action(user.code_if):
  insert("if (")
  
action(user.code_else):
  insert(" else {")
  
action(user.code_else_if):
  insert(" else if (")
  
action(user.code_switch):
  insert("switch (")
  
action(user.code_case):
  insert("case :")
  
action(user.code_do_loop):
  insert("do {")
  key(enter)
  
action(user.code_while_loop):
  insert("while (")
  
action(user.code_for_loop):
  insert("for (")
  
action(user.code_for_each_loop):
  insert(".forEach(")
  
action(user.code_reduce):
  insert(".reduce(")
  
action(user.code_map):
  insert(".map(")
  
action(user.code_filter):
  insert(".filter(")
  
action(user.code_to_integer):
  insert("parseInt(")
  
action(user.code_to_float):
  insert("parseFloat(")
  
action(user.code_to_string):
  insert("String(")

action(user.code_to_boolean):
  insert("Boolean(")
  
action(user.code_and):
  insert(" && ")
  
action(user.code_or):
  insert(" || ")
  
action(user.code_not):
  insert(" != ")
  
action(user.code_sysout):
  insert("console.log(")
  
action(user.code_import):
  insert("import ")

action(user.code_from):
  insert(" from \"")
  
action(user.code_block):
  insert(" {")
  key(enter)

action(user.code_function):
  insert("function (")
  key(left)
  
action(user.code_lambda):
  insert("() => ")
  key(left left left left left)
  
action(user.code_class):
  insert("class ")
  
action(user.code_docstring):
  insert("/** ")
  
action(user.code_return):
  insert("return ")
  
action(user.code_null):
  insert("null")
  
action(user.code_true):
  insert("true")
  
action(user.code_false):
  insert("false")
  