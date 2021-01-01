#defines the various mode commands
mode: all
-
welcome back:
    user.mouse_wake()
    user.history_enable()
    user.talon_mode()
    app.notify("Let's go!")

sleep all:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    speech.disable()
    user.engine_sleep()
    app.notify("Sleeping...")

talon sleep: speech.disable()
talon wake: speech.enable()
# begin: these commands are really for windows & mac with Dragon.
dragon mode: user.dragon_mode()
talon mode: user.talon_mode()
# end: these commands are really for windows & mac on Dragon.
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
    app.notify("Command")

