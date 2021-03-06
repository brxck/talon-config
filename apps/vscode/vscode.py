import socket
from time import sleep
from talon import Context, actions, Module, app

is_mac = app.platform == "mac"

ctx = Context()
mod = Module()
mod.apps.vscode = "app.name: Code.exe"
mod.apps.vscode = "app.name: Visual Studio Code"
mod.apps.vscode = "app.name: Code"
mod.apps.vscode = "app.name: Code - OSS"

ctx.matches = r"title: /.* - Visual Studio Code$/"


class VSCodeSocket:
    def __init__(self):
        self.connect()

    def connect(self):
        try:
            self.client = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
            self.client.connect("/tmp/vscode_commander.sock")
        except FileNotFoundError:
            print("VSCodeSocket: Connection failed. Socket does not exist.")
        else:
            print("VSCodeSocket: Connected.")

    def send(self, command):
        try:
            self.client.sendall(command.encode("utf-8"))
        except Exception as error:
            print(f"VSCodeSocket: {error}")
            self.client.close()
            print("VSCodeSocket: Reconnecting...")
            self.connect()
            try:
                self.client.send(command.encode("utf-8"))
            except Exception:
                app.notify("VSCode Socket Failed")
        else:
            sleep(0.1)


vscode_socket = VSCodeSocket()


@ctx.action_class("win")
class win_actions:
    def filename():
        title = actions.win.title()
        if is_mac:
            result = title.split(" — ")[0]
        else:
            result = title.split(" - ")[0]

        if "." in result:
            return result

        return ""

    def file_ext():
        return actions.win.filename().split(".")[-1]


@mod.action_class
class Actions:
    def vscode(command: str):
        """Execute command via Unix domain socket."""
        vscode_socket.send(command)

    def vscode_ignore_clipboard(command: str):
        """Preserved for ease of compatibility."""
        vscode_socket.send(command)


@ctx.action_class("user")
class user_actions:
    # snippet.py support begin
    def snippet_search(text: str):
        actions.user.vscode("Insert Snippet")
        actions.insert(text)

    def snippet_insert(text: str):
        """Inserts a snippet"""
        actions.user.vscode("Insert Snippet")
        actions.insert(text)
        actions.key("enter")

    def snippet_create():
        """Triggers snippet creation"""
        actions.user.vscode("Preferences: Configure User Snippets")

    # snippet.py support end

    def tab_jump(number: int):
        if number < 10:
            if is_mac:
                actions.key("ctrl-{}".format(number))
            else:
                actions.key("alt-{}".format(number))

    def tab_final():
        if is_mac:
            actions.key("ctrl-0")
        else:
            actions.key("alt-0")

    # splits.py support begin
    def split_number(index: int):
        """Navigates to a the specified split"""
        if index < 9:
            if is_mac:
                actions.key("cmd-{}".format(index))
            else:
                actions.key("ctrl-{}".format(index))

    # splits.py support end

    # find_and_replace.py support begin

    def find(text: str):
        """Triggers find in current editor"""
        if is_mac:
            actions.key("cmd-f")
        else:
            actions.key("ctrl-f")

        if text:
            actions.insert(text)

    def find_next():
        actions.key("enter")

    def find_previous():
        actions.key("shift-enter")

    def find_everywhere(text: str):
        """Triggers find across project"""
        if is_mac:
            actions.key("cmd-shift-f")
        else:
            actions.key("ctrl-shift-f")

        if text:
            actions.insert(text)

    def find_toggle_match_by_case():
        """Toggles find match by case sensitivity"""
        if is_mac:
            actions.key("alt-cmd-c")
        else:
            actions.key("alt-c")

    def find_toggle_match_by_word():
        """Toggles find match by whole words"""
        if is_mac:
            actions.key("cmd-alt-w")
        else:
            actions.key("alt-w")

    def find_toggle_match_by_regex():
        """Toggles find match by regex"""
        if is_mac:
            actions.key("cmd-alt-r")
        else:
            actions.key("alt-r")

    def replace(text: str):
        """Search and replaces in the active editor"""
        if is_mac:
            actions.key("alt-cmd-f")
        else:
            actions.key("ctrl-h")

        if text:
            actions.insert(text)

    def replace_everywhere(text: str):
        """Search and replaces in the entire project"""
        if is_mac:
            actions.key("cmd-shift-h")
        else:
            actions.key("ctrl-shift-h")

        if text:
            actions.insert(text)

    def replace_confirm():
        """Confirm replace at current position"""
        if is_mac:
            actions.key("shift-cmd-1")
        else:
            actions.key("ctrl-shift-1")

    def replace_confirm_all():
        """Confirm replace all"""
        if is_mac:
            actions.key("cmd-enter")
        else:
            actions.key("ctrl-alt-enter")

    def select_previous_occurrence(text: str):
        actions.edit.find(text)
        actions.sleep("100ms")
        actions.key("shift-enter esc")

    def select_next_occurrence(text: str):
        actions.edit.find(text)
        actions.sleep("100ms")
        actions.key("esc")

    # find_and_replace.py support end
