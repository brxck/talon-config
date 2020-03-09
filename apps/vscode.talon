line jump <number_small>:
  key(ctrl-g)
  insert(number_small)

# Display
flip layout:
    key(alt-shift-0)
sidebar:
    key(ctrl-b)
explore:
    key(ctrl-shift-e)
source control:
    key(ctrl-shift-g)
keyboard shortcuts:
    key(ctrl-k ctrl-s)
key mappings:
    key(ctrl-k ctrl-s:2)
settings:
    key(alt-f p s enter)
snippets:
    key(alt-f p s:2 enter)
extensions:
    key(ctrl-shift-x)
outline:
    key(ctrl-shift-o)
search details:
    key(ctrl-shift-j)
output panel:
    key(ctrl-shift-u)
markdown preview:
    key(ctrl-shift-v)
markdown preview side:
    key(ctrl-k v)
Zen mode:
    key(ctrl-k z)
toggle centered:
    key(ctrl-k ctrl-l)
change theme:
    key(ctrl-k ctrl-t)

# File Management
copy path:
    key(ctrl-k p)
commander:
    key(ctrl-shift-p)
go to:
    key(ctrl-p)
file open:
    key(ctrl-o)
folder open:
    key(ctrl-k ctrl-o)
save and close:
    key(ctrl-s/10 ctrl-w)
file new:
    key(calt-n)
tab new:
    key(ctrl-t)
window new:
    key(ctrl-shift-n)
window close:
    key(alt-f4)
workspace close:
    key(ctrl-k f)
editor close:
    key(ctrl-f4)
save as:
    key(ctrl-shift-s)
save all:
    key(ctrl-k s)
preview close:
    key(space ctrl-z)
preview pin:
    key(ctrl-k enter)
explore here:
    key(ctrl-k r)
source commit:
    key(ctrl-enter)

# Search
replace:
    key(ctrl-h)
search:
    key(ctrl-shift-f)
search and replace:
    key(ctrl-shift-h)
next find:
    key(f3)
(prior | previous) find:
    key(shift-f3)
select all occurrences:
    key(alt-enter)
toggle case sensitive:
    key(alt-c)
toggle regex:
    key(alt-r)
toggle whole word:
    key(alt-w)
show all symbols:
    key(ctrl-t)
go to symbol:
    key(ctrl-shift-o)

# Editor Management
tab close:
    key(ctrl-w)
folder close:
    key(ctrl-k f)
window split:
    key(ctrl-backslash)
group left:
    key(ctrl-k left)
group right:
    key(ctrl-k right)
# <nth> tab:
#     key(alt-%(nth)s)

# Languages Editing
go to definition:
    key(f12)
# go to required definition:
#     key(ctrl-f12:2 ctrl-right:5 left/50 f12)
peak definition:
    key(alt-f12)
trigger parameter hints:
    key(ctrl-shift-space)
format that:
    key(ctrl-k ctrl-f)
(definition to side | side def):
    key(ctrl-k f12)
show references:
    key(shift-f12)
rename symbol:
    key(f2)
(trim white):
    key(ctrl-k ctrl-x)
change file language:
    key(ctrl-k m)

# Debugging
debug:
    key(ctrl-shift-d)
[toggle] break point:
    key(f9)
# step over [<n>]:
#     R(Key("f10/50")*Repeat(extra='n')),
step into:
    key(f11)
step out [of]:
    key(shift-f11)
resume:
    key(f5)
stopper:
    key(shift-f5)
continue:
    key(f5)
(show hover|mouse hover|hover mouse):
    key(ctrl-k ctrl-i)
[show] problems [panel]:
    key(ctrl-shift-m)
next error:
    key(f8)
(prior | previous) error:
    key(shift-f8)
toggle tab moves focus:
    key(ctrl-m)

# Integrated Terminal
term new:
    key(ctrl-shift-backtick)
term scroll up:
    key(ctrl-up)
term scroll down:
    key(ctrl-down)
term pinch:
    key(shift-pgup)
term punch:
    key(shift-pgdown)
nexterm:
    key(ctrl-shift-0)
prexterm:
    key(ctrl-shift-9)
term split:
    key(ctrl-backslash)

# Collapsing
fold region:
    key(ctrl-shift-lbracket)
unfold region:
    key(ctrl-shift-rbracket)
fold [all] subregions:
    key(ctrl-k ctrl-lbracket)
unfold [all] subregions:
    key(ctrl-k ctrl-rbracket)
fold [all] regions:
    key(ctrl-k ctrl-0)
unfold [all] regions:
    key(ctrl-k ctrl-j)
toggle word wrap:
    key(alt-z)
run this line:
    key(csalt-l)
join line:
    key(csalt-j)

# requires gitlens extension
toggle blame:
    key(ctrl-shift-g b)
lens commit details:
    key(ctrl-shift-g c)
lens file history:
    key(ctrl-shift-g h)
lens repo status:
    key(ctrl-shift-g s)
toggle git lens:
    key(ctrl-shift-g shift-b)