from talon import Context, actions, Module, noise

mod = Module()
ctx = Context()
ctx.commands = {
    "^zoom switch$": lambda m: actions.user.toggle_zoom("on")
}


def on_pop(active):
    actions.user.toggle_zoom("off")


@mod.action_class
class Actions:
    def toggle_zoom(mode: str):
        """Focus Zoom and toggle mute."""
        actions.user.switcher_focus("zoom")
        actions.key("alt-a")
        if mode == "on":
            noise.register('pop', on_pop)
            actions.mode.disable("command")
        else:
            noise.unregister('pop', on_pop)
            actions.mode.enable("command")
