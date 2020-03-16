from talon import Module, Context, actions, ui
from typing import List, Union

ctx = Context()
key = actions.key

words_to_keep_lowercase = "a,an,the,at,by,for,in,is,of,on,to,up,and,as,but,or,nor".split(
    ","
)


def surround(by):
    def func(i, word, last):
        if i == 0:
            word = by + word
        if last:
            word += by
        return word

    return func


def FormatText(m, fmtrs):
    if m._words[-1] == "over":
        m._words = m._words[:-1]
    try:
        words = actions.dictate.parse_words(m)
        words = actions.dictate.replace_words(words)
    except AttributeError:
        with clip.capture() as s:
            edit.copy()
        words = s.get().split(" ")
        if not words:
            return

    return format_text_helper(words, fmtrs)


def format_text_helper(words, fmtrs):
    tmp = []
    spaces = True
    for i, w in enumerate(words):
        for name in reversed(fmtrs):
            smash, func = formatters_dict[name]
            w = func(i, w, i == len(words) - 1)
            spaces = spaces and not smash
        tmp.append(w)
    words = tmp

    sep = " "
    if not spaces:
        sep = ""
    return sep.join(words)


NOSEP = True
SEP = False


def words_with_joiner(joiner):
    """Pass through words unchanged, but add a separator between them."""

    def formatter_function(i, word, _):
        return word if i == 0 else joiner + word

    return (NOSEP, formatter_function)


def first_vs_rest(first_func, rest_func=lambda w: w):
    """Supply one or two transformer functions for the first and rest of
    words respectively.

    Leave second argument out if you want all but the first word to be passed
    through unchanged.
    Set first argument to None if you want the first word to be passed
    through unchanged."""
    if first_func is None:
        first_func = lambda w: w

    def formatter_function(i, word, _):
        return first_func(word) if i == 0 else rest_func(word)

    return formatter_function


def every_word(word_func):
    """Apply one function to every word."""

    def formatter_function(i, word, _):
        return word_func(word)

    return formatter_function


formatters_dict = {
    "dunder": (NOSEP, first_vs_rest(lambda w: "__%s__" % w)),
    "camel": (NOSEP, first_vs_rest(lambda w: w, lambda w: w.capitalize())),
    "hammer": (NOSEP, every_word(lambda w: w.capitalize())),
    "snake": (NOSEP, first_vs_rest(lambda w: w.lower(), lambda w: "_" + w.lower())),
    "gum": (NOSEP, every_word(lambda w: w)),
    "spine": words_with_joiner("-"),
    "packed": words_with_joiner("::"),
    "allcaps": (SEP, every_word(lambda w: w.upper())),
    "alldown": (SEP, every_word(lambda w: w.lower())),
    "dubstring": (SEP, surround('"')),
    "string": (SEP, surround("'")),
    "padded": (SEP, surround(" ")),
    "pebble": words_with_joiner("."),
    "incline": (NOSEP, every_word(lambda w: "/" + w)),
    "descend": (SEP, first_vs_rest(lambda w: w.capitalize())),
    "speak": (
        SEP,
        lambda i, w, _: w.capitalize()
        if i == 0 or w not in words_to_keep_lowercase
        else w,
    ),
    "tie": (NOSEP, every_word(lambda w: w.capitalize())),
}

mod = Module()
mod.list("formatters", desc="list of formatters")


@mod.capture
def formatters(m) -> List[str]:
    "Returns a list of formatters"


@mod.capture
def format_text(m) -> str:
    "Formats the text and returns a string"


@mod.action_class
class Actions:
    def formatters_format_text(text: Union[str, List[str]], fmtrs: List[str]) -> str:
        """Formats a list of parsed words given a list of formatters"""
        if isinstance(text, list):
            return format_text_helper(text, fmtrs)
        else:
            return format_text_helper([text], fmtrs)


@ctx.capture(rule="{self.formatters}+")
def formatters(m):
    return m.formatters_list


@ctx.capture(rule="<self.formatters> <dgndictation>")
def format_text(m):
    return FormatText(m.dgndictation, m.formatters)


ctx.lists["self.formatters"] = formatters_dict.keys()
