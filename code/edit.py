from talon import Context, actions, clip

ctx = Context()


@ctx.action_class("edit")
class EditActions:
    def selected_text() -> str:
        try:
            with clip.capture() as s:
                actions.key("ctrl-c")
            return s.get()
        except clip.NoChange:
            return ""
