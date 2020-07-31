from talon import ctrl, noise

noise.register("pop", lambda m: ctrl.mouse_click())
