from talon import Module, ui, actions

mod = Module()


sentence_ends = {
    "period": ".",
    "question": "?",
    "exclamation": "!",
    "enter": "\n"
}
punctuation = {
    "comma": ",",
    "semicolon": ";",
    "dash": "-",
    "colon": ":"
}


class AutoFormat:
    def __init__(self):
        self.reset()
        ui.register("app_deactivate", lambda app: self.reset())
        ui.register("win_focus", lambda win: self.reset())

    def reset(self):
        self.caps = True
        self.space = False

    def insert_word(self, word):
        symbol = None
        if word in sentence_ends:
            symbol = sentence_ends[word]

        elif word in punctuation:
            symbol = punctuation[word]

        elif self.space and word[0]:
            actions.insert(" ")

        if self.caps:
            word = word.capitalize()

        actions.insert(symbol or word)

        self.space = symbol != "\n"
        self.caps = word in sentence_ends

    def phrase(self, text):
        for word in text.split():
            self.insert_word(word)


auto_format = AutoFormat()


@mod.action_class
class Actions():
    def insert_formatted(text: str):
        """Insert auto formatted text"""
        auto_format.phrase(text)
