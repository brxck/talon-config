from typing import Set

from talon import Module, Context, actions
import sys
    
default_alphabet = 'air bat cap drum east fox gust harp sit jury crunch look made near out pit quench red soy trap skew vest whale plex yank zip'.split(' ')
letters_string = 'abcdefghijklmnopqrstuvwxyz'


default_digits = "zero one two three four five six seven eight nine".split(" ")
numbers = [str(i) for i in range(10)]
default_f_digits = "one two three four five six seven eight nine ten eleven twelve".split(
    " "
)

mod = Module()
mod.list("letter", desc="The spoken phonetic alphabet")
mod.list("symbol", desc="All symbols from the keyboard")
mod.list("arrow", desc="All arrow keys")
mod.list("number", desc="All number keys")
mod.list("modifier", desc="All modifier keys")
mod.list("function", desc="All function keys")
mod.list("special", desc="All special keys")


@mod.capture
def modifiers(m) -> str:
    "One or more modifier keys"


@mod.capture
def arrow(m) -> str:
    "One directional arrow key"


@mod.capture
def arrows(m) -> str:
    "One or more arrows separate by a space"


@mod.capture
def number(m) -> str:
    "One number key"


@mod.capture
def letter(m) -> str:
    "One letter key"


@mod.capture
def letters(m) -> list:
    "Multiple letter keys"


@mod.capture
def symbol(m) -> str:
    "One symbol key"


@mod.capture
def function(m) -> str:
    "One function key"


@mod.capture
def special(m) -> str:
    "One special key"


@mod.capture
def any(m) -> str:
    "Any one key"


@mod.capture
def key(m) -> str:
    "A single key with optional modifiers"


ctx = Context()
ctx.lists["self.modifier"] = {
    "command": "cmd",
    "control": "ctrl",  #'troll':   'ctrl',
    "shift": "shift",  #'sky':     'shift',
    "alt": "alt",
    "option": "alt",
    "super": "super",
}

ctx.lists['self.letter'] = dict(zip(default_alphabet, letters_string))
ctx.lists['self.symbol'] = {
    'smite': '`', '`': '`',
    'drip': ',', ',': ',',
    'dot': '.', 'period': '.',
    'semi': ';', 'semicolon': ';',
    'smote': "'",
    'square': '[',
    'squad': ']',
    'slash': '/', 'slash': '/',
    'backslash': '\\',
    'dash': '-',
    'equit': '=',
    'cross': '+',
    'quell': '?',
    'tilde': '~',
    'bang': '!',
    'doll': '$',
    'score': '_',
    'cot': ':',
    'bend': '(',
    'rend': ')',
    'burl': '{',
    'curl': '}',
    'angle': '<',
    'rangle': '>',
    'splat': '*',
    'pound': '#',
    'perco': '%',
    'caret': '^',
    'insta': '@',
    'amper': '&',
    'pipe': '|',
    'quote': '"',
}

ctx.lists['self.number'] = dict(zip(default_digits, numbers))
ctx.lists['self.arrow'] = {
    'lease':  'left',
    'ross':  'right',
    'sauce':    'up',
    'dunce':  'down',
}

simple_keys = [
    "tab",
    "escape",
    "enter",
    "space",
    "home",
    "pageup",
    "pagedown",
    "end",
    "insert",
]

alternate_keys = {
    'scratch': 'backspace',
    'chuck': 'delete',
    'void': 'space',
}
keys = {k: k for k in simple_keys}
keys.update(alternate_keys)
ctx.lists["self.special"] = keys
ctx.lists["self.function"] = {
    f"F {default_f_digits[i]}": f"f{i + 1}" for i in range(12)
}


@ctx.capture(rule="{self.modifier}+")
def modifiers(m):
    return "-".join(m.modifier_list)


@ctx.capture(rule="{self.arrow}")
def arrow(m) -> str:
    return m.arrow


@ctx.capture(rule="<self.arrow>+")
def arrows(m) -> str:
    return str(m)


@ctx.capture(rule="{self.number}")
def number(m):
    return m.number


@ctx.capture(rule="{self.letter}")
def letter(m):
    return m.letter


@ctx.capture(rule="{self.special}")
def special(m):
    return m.special


@ctx.capture(rule="{self.symbol}")
def symbol(m):
    return m.symbol


@ctx.capture(rule="{self.function}")
def function(m):
    return m.function


@ctx.capture(
    rule="(<self.arrow> | <self.number> | <self.letter> | <self.symbol> | <self.function> | <self.special>)"
)
def any(m) -> str:
    return str(m)


@ctx.capture(rule="<self.modifiers> <self.any>")
def key(m) -> str:
    mods = m.modifiers
    return "-".join([mods] + [m.any])


@ctx.capture(rule="{self.letter}+")
def letters(m):
    return m.letter_list


@mod.action_class
class Actions:
    def keys_uppercase_letters(m: list):
        """Inserts uppercase letters from list"""
        actions.insert("".join(m).upper())

    def get_alphabet():
        """Provides the alphabet dictionary"""
        return ctx.lists["user.letter"]

