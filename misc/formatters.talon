#provide both anchored and unachored commands via 'over'
(say | phrase) <user.text>$: 
  result = user.formatted_text(text, "NOOP")
  insert(result)
(say | phrase) <user.text> over: 
  result = user.formatted_text(text, "NOOP")
  insert(result)

<user.format_text>$: insert(format_text)
and <user.format_text>$: insert(" {format_text}")
<user.format_text> over: insert(format_text)

phrase <user.text>$: insert(user.text)
phrase <user.text> over: insert(user.text)

(num|numb|number) <user.number_scaled>: insert(user.number_scaled)
word <user.word>: insert(user.word)

format help: user.formatters_help_toggle()
format recent: user.formatters_recent_toggle()
format repeat <number>: 
  result = user.formatters_recent_select(number)
  insert(result)
format copy <number>:
  result = user.formatters_recent_select(number)
  clip.set_text(result)

^reformat <user.formatters>$:
  insert(user.formatters_reformat_selection(user.formatters))
^nope that$: user.formatters_clear_last()
^nope that was <user.formatters>$:
  user.formatters_clear_last()
  insert(user.formatters_reformat_last(user.formatters))
