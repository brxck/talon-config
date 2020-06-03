os: windows
os: linux
app: Slack
app: slack.exe
#todo: some sort of plugin, consolidate with teams or something?
-
# Workspaces
slack <number>:
    key("ctrl-{number}")
slack up:
    key(ctrl-shift-tab)
slack down:
    key(ctrl-tab)

# Channel
channel:
    key(ctrl-k)
channel <user.text>:
    key(ctrl-k)
    insert(user.formatted_text(user.text, "ALL_LOWERCASE"))
unread prior:
    key(alt-shift-up)
unread next:
    key(alt-shift-down)
channel info:
    key(ctrl-shift-i)
channel up:
    key(alt-up)
channel down:
    key(alt-down)

# Navigation
zone next:
    key(f6)
zone prior:
    key(shift-f6)
direct messages:
    key(ctrl-shift-k)
threads:
    key(ctrl-shift-t)
go back:
    key(alt-left)
go forward:
    key(alt-right)
activity:
    key(ctrl-shift-m)
directory:
    key(ctrl-shift-e)
stars:
    key(ctrl-shift-s)
unread:
    key(ctrl-j)
status: 
    key(ctrl-shift-y)
(find | search):
    key(ctrl-f)

# Messaging
slide:
    key(shift-enter)
reaction:
    key(ctrl-shift-\\)
command:
    key(ctrl-shift-c)
code insert:
    insert("``````")
    key(left left left)
    key(shift-enter)
    key(shift-enter)
    key(up)
bullet insert:
    key(ctrl-shift-8)
number insert:
    key(ctrl-shift-7)
quote insert:
    key(ctrl-shift-9)
bold:
    key(ctrl-b)
italic:
    key(ctrl-i)
strikethrough:
    key(ctrl-shift-x)
read all:
    key(shift-esc)
read channel:
    key(esc)

# Files and Snippets
file insert:
    key(ctrl-u)
snippet insert:
    key(ctrl-shift-enter)

# Calls
(mute | unmute): key(m)
([toggle] video): key(v)
invite: key(a)

# Miscellaneous
shortcuts: key(ctrl-/)
emote <user.text>: 
    key(:)
    insert(user.formatted_text(user.text, "SNAKE_CASE"))
    key(:)