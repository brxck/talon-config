not mode: sleep
-
^dictation mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")
    app.notify("Dictation")

^command mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")
