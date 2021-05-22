launch:
    key(super-space)
launch <user.text>:
    key(super-space)
    sleep(200ms)
    insert("{text}")
launch web:
    key(super-shift-enter)
launch run:
    key(super-shift-space)
launch (file|files):
    key(super-shift-n)
launch search:
    key(super-alt-space)
launch notify:
    key(super-n)
launch (term|terminal):
    key(super-enter)
launch help:
    key(super-shift-?)
launch settings:
    key(super-c)
panel switch:
    key(super-i)

work <digits>:
    key("super-{digits}")
work next:
    key(super-tab)
work last:
    key(super-shift-tab)
send <digits>:
    key("super-shift-{digits}")
carry <digits>:
    key("super-alt-{digits}")
send scratch:
    key(super-ctrl-m)
work scratch:
    key(super-ctrl-a)
work flip:
    key(super-t)
work load:
    key(super-.)
work save:
    key(super-,)

(window|win) flip:
    key(super-backspace)
focus float:
    key(super-shift-t)
(window|win) resize:
    key(super-r)
(window|win) resize <user.arrow_keys>:
    key(super-r)
    key(arrow)
    key(super-r)
(window|win) grow:
    key(super-r)
    key(right)
    key(super-r)
(window|win) shrink:
    key(super-r)
    key(left)
    key(super-r
(window|win) kill:
    key(super-shift-q)
(window|win) float:
    key(super-shift-f)
(window|win) full:
    key(super-f)
(window|win) move <user.arrow_keys>:
    key("super-shift-{arrow}")
(window|win) <user.arrow_keys>:
    key("super-{arrow}")
(window|win) jump:
    key(super-ctrl-space)

^session lock$:
    key(super-escape)
^session logout$:
    key(super-shift-e)
^sessions shutdown$:
    key(super-shift-p)
^session reboot$:
    key(super-shift-b)
^session refresh$:
    key(super-shift-r)
^session reload$:
    key(super-shift-c)
^session sleep$:
    key(super-shift-s)