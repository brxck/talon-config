from talon import Context, actions, ui, Module

ctx = Context()

ctx.matches = r"""
app: Notepad++ : a free (GNU) source code editor
app: notepad++.exe
"""


@ctx.action_class("win")
class win_actions:
    def filename():
        title = actions.win.title()
        result = title.split(" - ")[0]
        if "." in result:
            # print(result.split("\\")[-1])
            return result.split("\\")[-1]
        return ""

    def file_ext():
        return actions.win.filename().split(".")[-1]


@ctx.action_class("edit")
class edit_actions:
    def find(text: str):
        actions.key("ctrl-f")
        actions.insert(text)


@ctx.action_class("user")
class user_actions:
    def go_to_line(verb: str, line: int):
        actions.key("ctrl-g")
        actions.insert(str(line))
        actions.key("enter")

        if verb is not None:
            actions.user.perform_movement_action(verb)

    def select_next_occurrence(verbs: str, text: str):
        actions.edit.find(text)
        actions.sleep("100ms")
        actions.key("enter esc")
        if verbs is not None:
            actions.user.perform_selection_action(verbs)

    def select_previous_occurrence(verbs: str, text: str):
        actions.edit.find(text)
        actions.sleep("100ms")
        actions.key("shift-enter esc")
        if verbs is not None:
            actions.user.perform_selection_action(verbs)

    def tab_jump(number: int):
        if number < 10:
            actions.key("ctrl-keypad_{}".format(number))

    def tab_final():
        """Jumps to the final tab"""
        print("Notepad doesn't support this...")
        # actions.key("ctrl-numpad_0")

    # find_and_replace.py support begin

    def find(text: str):
        """Triggers find in current editor"""
        actions.key("ctrl-f")

        if text:
            actions.insert(text)

    def find_next():
        actions.key("enter")

    def find_previous():
        actions.key("shift-enter")

    def find_everywhere(text: str):
        """Triggers find across project"""

        actions.key("ctrl-shift-f")

        if text:
            actions.insert(text)

    def find_toggle_match_by_case():
        """Toggles find match by case sensitivity"""
        actions.key("alt-c")

    def find_toggle_match_by_word():
        """Toggles find match by whole words"""
        actions.key("alt-w")

    def find_toggle_match_by_regex():
        """Toggles find match by regex"""
        actions.key("alt-g")

    def replace(text: str):
        """Search and replaces in the active editor"""
        actions.key("esc ctrl-h")

        if text:
            actions.insert(text)

    def replace_everywhere(text: str):
        """Search and replaces in the entire project"""
        actions.key("esc ctrl-shift-f")

        if text:
            actions.insert(text)

    def replace_confirm():
        """Confirm replace at current position"""
        actions.key("alt-r")

    def replace_confirm_all():
        """Confirm replace all"""
        actions.key("alt-a")

    # find_and_replace.py support end
