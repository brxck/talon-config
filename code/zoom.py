from talon import actions, Module, noise

mod = Module()


def on_pop(active):
    actions.user.zoom_toggle("off")


@mod.action_class
class Actions:
    def zoom_toggle(mode: str):
        """Focus Zoom and toggle mute."""
        actions.user.switcher_focus("zoom")
        actions.key("alt-a")
        if mode == "on":
            noise.register("pop", on_pop)
            actions.mode.disable("command")
        else:
            noise.unregister("pop", on_pop)
            actions.mode.enable("command")
