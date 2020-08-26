tag: user.browser
-
go location: browser.focus_address()
go home: browser.go_home()
go next: browser.go_forward()
go last: browser.go_back()
window private: browser.open_private_window()

bookmark show: browser.bookmarks()
bookmark bar: browser.bookmarks_bar()
bookmark that: browser.bookmark()
bookmark tabs: browser.bookmark_tabs()

(refresh | reload): browser.reload()
(refresh | reload) hard: browser.reload_hard()

show downloads: browser.show_downloads()
show extensions: browser.show_extensions()
show history: browser.show_history()
show cache: browser.show_clear_cache()

dev tools: browser.toggle_dev_tools()

localhost <user.number_scaled>:
    browser.focus_address()
    insert("localhost:")
    insert(number_scaled)
    key(enter)
