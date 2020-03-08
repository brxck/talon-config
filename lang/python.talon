code.language: python
-

action(user.code_if):
  insert("if :")
  key(left)
  
action(user.code_else):
  insert("else:")
  
action(user.code_else_if):
  insert("elif :")
  key(left)
  
# action(user.code_switch):
# action(user.code_case):
  
action(user.code_while_loop):
  insert("while :")
  key(left)
  
action(user.code_for_loop):
  insert("for :")
  key(left)
  
action(user.code_for_each_loop):
  user.code_for_loop()
  
# action(user.code_reduce):
# action(user.code_map):
# action(user.code_filter):
  
action(user.code_to_integer):
  insert("int(")
  
action(user.code_to_float):
  insert("float(")
  
action(user.code_to_string):
  insert("str(")

action(user.code_to_boolean):
  insert("bool(")
  
action(user.code_and):
  insert(" and ")
  
action(user.code_or):
  insert(" or ")
  
action(user.code_not):
  insert(" != ")

is:
  insert(" is ")

is not:
  insert(" is not ")

not:
  insert(" not ")
  
action(user.code_sysout):
  insert("print(")
  
action(user.code_import):
  insert("import ")

action(user.code_from):
  insert("from ")
  
# action(user.code_block):

action(user.code_function):
  insert("def ():")
  key(left left)
  
action(user.code_lambda):
  insert("lambda :")
  key(left)
  
action(user.code_class):
  insert("class :")
  
action(user.code_docstring):
  insert("\"\"\"\"\"\"")
  key(left left left)
  
action(user.code_return):
  insert("return ")
  
action(user.code_null):
  insert("None")
  
action(user.code_true):
  insert("True")
  
action(user.code_false):
  insert("False")
  