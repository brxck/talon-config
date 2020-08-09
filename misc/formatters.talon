#provide both anchored and unachored commands via 'over'
(say | phrase) <user.text>$: 
  result = user.formatted_text(text, "NOOP")
  insert(result)
(say | phrase) <user.text> over: 
  result = user.formatted_text(text, "NOOP")
  insert(result)
<user.format_text>$: insert(format_text)
<user.format_text> over: insert(format_text)

phrase <user.text>$: insert(user.text)
phrase <user.text> over: insert(user.text)

num <user.number_scaled>: insert(user.number_scaled)
word <user.word>: insert(user.word)

list formatters: user.list_formatters()
hide formatters: user.hide_formatters()
^nope that$: user.clear_last_phrase()
^nope that was <user.formatters>$:
  user.clear_last_phrase()
  insert(user.reformat_last_phrase(user.formatters))
