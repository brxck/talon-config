from talon import Context, Module, actions, clip

ctx = Context()
mod = Module()

ctx.matches = r'''
title: /.* - Visual Studio Code$/
'''


@ctx.action_class('win')
class win_actions:
    """Allow `code.py` to determine what the current file is."""
    def filename():
        title = actions.win.title()
        file = title.split(" - ")[0]
        if "." in file:
            return file
        return ""

    def file_ext():
        return actions.win.filename().split(".")[-1]


@mod.action_class
class Actions:
    def vscode(command: str):
        """Execute command via command palette"""
        # Clip is noticeably faster than insert
        original_clipboard = clip.text()
        clip.set_text(f"{command}")
        actions.key("ctrl-shift-p")
        actions.edit.paste()
        actions.key("enter")
        actions.sleep("100ms")
        clip.set_text(original_clipboard)
