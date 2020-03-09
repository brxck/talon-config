app: Google Chrome
app: Firefox
app: Code
app: /.*terminal/
-
tab new:
    app.tab_open()
prexta:
    app.tab_previous()
nexta:
    app.tab_next()
tab close:
    app.tab_close()
tab restore:
    app.tab_reopen()
