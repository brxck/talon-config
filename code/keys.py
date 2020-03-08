from typing import Set

from talon import Module, Context, actions
import sys

default_alphabet = "air bat cap drum each fine gust harp sit jury crunch look made near odd pit quench red sun trap urge vest whale plex yank zip".split(
    " "
)
letters_string = "abcdefghijklmnopqrstuvwxyz"

default_digits = "zero one two three four five six seven eight nine".split(" ")
numbers = [str(i) for i in range(10)]

mod = Module()
mod.list("letter", desc="The spoken phonetic alphabet")
mod.list("symbol", desc="All symbols from the keyboard")
mod.list("arrow", desc="All arrow keys")
mod.list("number", desc="All number keys")
mod.list("modifier", desc="All modifier keys")
mod.list("special", desc="All special keys")


@mod.capture
def modifiers(m) -> Set[str]:
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
    "control": "ctrl",
    "troll": "ctrl",
    "shift": "shift",
    "sky": "shift",
    "alt": "alt",
    "option": "alt",
    "super": "super",
}

ctx.lists["self.letter"] = dict(zip(default_alphabet, letters_string))

ctx.lists["self.number"] = dict(zip(default_digits, numbers))
ctx.lists["self.arrow"] = {
    "lease": "left",
    "ross": "right",
    "sauce": "up",
    "dunce": "down",
}

simple_keys = ["escape"]

alternate_keys = {
    "shock": "tab",
    "slap": "enter",
    "void": "space",
    "strike": "home",
    "struck": "end",
    "pinch": "pageup",
    "punch": "pagedown",
    "scratch": "backspace",
    "chuck": "delete",
}
keys = {k: k for k in simple_keys}
keys.update(alternate_keys)
ctx.lists["self.special"] = keys


@ctx.capture(rule="{self.modifier}+")
def modifiers(m):
    return list(m.modifier)


@ctx.capture(rule="{self.arrow}")
def arrow(m) -> str:
    return m.arrow[0]


@ctx.capture(rule="<self.arrow>+")
def arrows(m) -> str:
    return str(m)


@ctx.capture(rule="{self.number}")
def number(m):
    return m.number[0]


@ctx.capture(rule="{self.letter}")
def letter(m):
    return m.letter[0]


@ctx.capture(rule="{self.special}")
def special(m):
    return m.special[0]


@ctx.capture(rule="(<self.arrow> | <self.number> | <self.letter> | <self.special>)")
def any(m) -> str:
    return str(m)


@ctx.capture(rule="<self.modifiers> <self.any>")
def key(m) -> str:
    mods = m.modifiers
    return "-".join(mods + [m.any])


@ctx.capture(rule="{self.letter}+")
def letters(m):
    return m.letter


@mod.action_class
class Actions:
    def keys_modifier_key(modifier: str, key: str):
        """(TEMPORARY) Presses the modifier plus supplied number"""
        res = "-".join([modifier] + [str(key)])
        actions.key(res)

    def keys_uppercase_letters(m: list):
        """Inserts uppercase letters from list"""
        actions.insert("".join(m).upper())

    def get_alphabet():
        """Provides the alphabet dictionary"""
        return ctx.lists["self.letter"]
