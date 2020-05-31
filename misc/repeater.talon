# -1 because we are repeating, so the initial command counts as one
<number>: core.repeat_command(number-1)
(repeat that|twice): core.repeat_command(1)
repeat that <number> [times]: core.repeat_command(number)
