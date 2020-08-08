#custom vscode commands go here
title: /.* - Visual Studio Code$/
-
tag(): find_and_replace
tag(): line_commands
tag(): multiple_cursors
tag(): snippets
tag(): splits
tag(): tabs
#talon app actions
action(app.tab_close): user.vscode("workbench.action.closeActiveEditor")
action(app.tab_next): user.vscode("workbench.action.nextEditorInGroup")
action(app.tab_previous): user.vscode("workbench.action.previousEditorInGroup")
action(app.tab_reopen): user.vscode("workbench.action.reopenClosedEditor")
action(app.window_close): user.vscode("workbench.action.closeWindow")
action(app.window_open): user.vscode("workbench.action.newWindow")

#talon code actions
action(code.toggle_comment): user.vscode("editor.action.commentLine")

#talon edit actions
action(edit.indent_more): user.vscode("editor.action.indentLines")
action(edit.indent_less): user.vscode("editor.action.outdentLines")
action(edit.save_all): user.vscode("workbench.action.files.saveAll")

# splits.py support begin
action(user.split_clear_all): user.vscode("View: Single Column Editor Layout")
action(user.split_clear): user.vscode("View: Join Editor Group with Next Group")
action(user.split_flip): user.vscode("View: Toggle Vertical/Horizontal Editor Layout") 
action(user.split_last): user.vscode("View: Focus Previous Editor Group")
action(user.split_next):  user.vscode("View: Focus Next Editor Group")
action(user.split_window_down): user.vscode("workbench.action.moveEditorToBelowGroup")
action(user.split_window_horizontally): user.vscode("View: Split Editor Orthogonal")
action(user.split_window_left): user.vscode("workbench.action.moveEditorToLeftGroup")
action(user.split_window_right): user.vscode("workbench.action.moveEditorToRightGroup")
action(user.split_window_up): user.vscode("workbench.action.moveEditorToAboveGroup")
action(user.split_window_vertically): user.vscode("View: Split Editor")
action(user.split_window): user.vscode("View: Split Editor")
# splits.py support end

#multiple_cursor.py support begin
#note: vscode has no explicit mode for multiple cursors
action(user.multi_cursor_add_above): user.vscode("Add Cursor Above")
action(user.multi_cursor_add_below): user.vscode("Add Cursor Below")
action(user.multi_cursor_add_to_line_ends): user.vscode("Add Cursor to Line Ends")
action(user.multi_cursor_disable): key(escape)
action(user.multi_cursor_enable): skip()
action(user.multi_cursor_select_all_occurrences): user.vscode("Select All Occurrences of Find Match")
action(user.multi_cursor_select_fewer_occurrences): user.vscode("Cursor Undo")
action(user.multi_cursor_select_more_occurrences): user.vscode("Add Selection To Next Find Match")
#multiple_cursor.py support end

please [<user.text>]: 
  user.vscode("Show All Commands")
  insert(user.text or "")

# Sidebar
bar explore: user.vscode("workbench.view.explorer")
bar extensions: user.vscode("workbench.view.extensions")
bar outline: user.vscode("outline.focus")
bar run: user.vscode("workbench.view.debug")
bar search: user.vscode("workbench.view.search")
bar source: user.vscode("workbench.view.scm")
bar switch: user.vscode("workbench.action.toggleSidebarVisibility")

# Panels
panel control: user.vscode("workbench.panel.repl.view.focus")
panel output: user.vscode("workbench.panel.output.focus")
panel problems: user.vscode("workbench.panel.markers.view.focus")
panel switch: user.vscode("workbench.action.togglePanel")
panel terminal: user.vscode("workbench.panel.terminal.focus")

# Settings
show settings: user.vscode("workbench.action.openGlobalSettings")
show shortcuts: user.vscode("workbench.action.openGlobalKeybindings")
show snippets: user.vscode("workbench.action.openSnippets")

# Display
center switch: user.vscode("workbench.action.toggleCenteredLayout")
fullscreen switch: user.vscode("workbench.action.toggleFullScreen")
theme switch: user.vscode("workbench.action.selectTheme")
wrap switch: user.vscode("editor.action.toggleWordWrap")
zen switch: user.vscode("workbench.action.toggleZenMode")

# File Commands
go to [<user.text>]: 
  user.vscode("Go to File")
  insert(text or "")
file copy path: user.vscode_ignore_clipboard("File: Copy Path of Active File") 
file create sibling: user.vscode("File: New File")  
file create: user.vscode("File: New Untitled File")
file open folder: user.vscode("File: Reveal in File Explorer")
#todo: rename isn't working.
#file rename active: 
#  user.vscode("File: Reveal Active File In Side Bar")
#  user.vscode("renameFile")
#file rename: user.vscode("renameFile")
file reveal: user.vscode("File: Reveal Active File In Side Bar") 

# Language Features
suggest show: user.vscode("editor.action.triggerSuggest")
hint show: user.vscode("editor.action.triggerParameterHints")
definition show: user.vscode("editor.action.revealDefinition")
definition peek: user.vscode("editor.action.peekDefinition")
definition side: user.vscode("editor.action.revealDefinitionAside")
references show: user.vscode("editor.action.goToReferences")
references find: user.vscode("references-view.find")
format that: user.vscode("editor.action.formatDocument")
format selection: user.vscode("editor.action.formatSelection")
imports fix: user.vscode("Organize Imports")
problem next: user.vscode("editor.action.marker.nextInFiles")
problem last: user.vscode("editor.action.marker.prevInFiles")
problem fix: user.vscode("problems.action.showQuickFixes")
rename that: user.vscode("editor.action.rename")
refactor that: user.vscode("editor.action.refactor")
whitespace trim: user.vscode("editor.action.trimTrailingWhitespace")
language switch: user.vscode("workbench.action.editor.changeLanguageMode")
refactor rename: user.vscode("editor.action.rename")
refactor this: user.vscode("editor.action.refactor")

#code navigation
(go declaration | follow): user.vscode("Go to Declaration")
go back: user.vscode("workbench.action.navigateBack") 
go forward:  user.vscode("workbench.action.navigateForward")  
go implementation: user.vscode("Go to Implementation")
go recent: user.vscode("File: Open Recent")
go type: user.vscode("editor.action.goToTypeDefinition")
go usage: user.vscode("References: Find All References")

# Bookmarks. Requires Bookmarks plugin
go marks: user.vscode("View: Show Bookmarks")
toggle mark: user.vscode("Bookmarks: Toggle")
go next mark: user.vscode("Bookmarks: Jump to Next")
go last mark: user.vscode("Bookmarks: Jump to Previous")

# Folding
fold that: user.vscode("editor.fold")
unfold that: user.vscode("editor.unfold")
fold those: user.vscode("editor.foldAllMarkerRegions")
unfold those: user.vscode("editor.unfoldRecursively")
fold all: user.vscode("editor.foldAll")
unfold all: user.vscode("editor.unfoldAll")
fold comments: user.vscode("editor.foldAllBlockComments")

# Git / Github (not using verb-noun-adjective pattern, mirroring terminal commands.)
git branch: user.vscode("git.branchFrom")
git branch this: user.vscode("git.branch")
git checkout: user.vscode("git.checkout")
git commit: user.vscode("git.commitStaged")
git commit undo: user.vscode("git.undoCommit")
git commit ammend: user.vscode("git.commitStagedAmend")
git diff: user.vscode("git.openChange")
git ignore: user.vscode("git.ignore")
git merge: user.vscode("git.merge")
git output: user.vscode("git.showOutput")
git pull: user.vscode("git.pullRebase")
git push: user.vscode("git.push")
git push focus: user.vscode("git.pushForce")
git rebase abort: user.vscode("git.rebaseAbort")
git reveal: user.vscode("git.revealInExplorer")
git revert: user.vscode("git.revertChange")
git stash: user.vscode("git.stash")
git stash pop: user.vscode("git.stashPop")
git stage: user.vscode("git.stage")
git stage all: user.vscode("git.stageAll")
git unstage: user.vscode("git.unstage")
git unstage all: user.vscode("git.unstageAll")

#Debugging
break point: user.vscode("editor.debug.action.toggleBreakpoint")
step over: user.vscode("workbench.action.debug.stepOver")
debug step into: user.vscode("workbench.action.debug.stepInto")
debug step out [of]: user.vscode("workbench.action.debug.stepOut")
debug start: user.vscode("workbench.action.debug.start")
debug pause: user.vscode("workbench.action.debug.pause")
debug stopper: user.vscode("workbench.action.debug.stop")
debug continue: user.vscode("workbench.action.debug.continue")
debug restart: user.vscode("workbench.action.debug.restart")

# Terminal
terminal external: user.vscode("workbench.action.terminal.openNativeConsole")
terminal new: user.vscode("workbench.action.terminal.new")
terminal next: user.vscode("workbench.action.terminal.focusNextPane")
terminal last:user.vscode("workbench.action.terminal.focusPreviousPane")
terminal split: user.vscode("workbench.action.terminal.split")
terminal trash: user.vscode("Terminal:Kill")
terminal scroll up: user.vscode("Terminal:ScrollUp")
terminal scroll down: user.vscode("Terminal:ScrollDown")

#TODO: should this be added to linecommands?
copy [line] down: user.vscode("editor.action.copyLinesDownAction")
copy [line] up: user.vscode("editor.action.copyLinesUpAction")

#todo: wtf?
#select less: user.vscode("Shrink Selection")
#select (more|this): user.vscode("Expand Selection")

# Emmet
emmet out:
    user.vscode("editor.emmet.action.balanceOut")
emmet in:
    user.vscode("editor.emmet.action.balanceIn")
emmet expand:
    user.vscode("editor.emmet.action.expandAbbreviation")
emmet match:
    user.vscode("editor.emmet.action.matchTag")
emmet next:
    user.vscode("editor.emmet.action.nextEditPoint")
emmet last:
    user.vscode("editor.emmet.action.prevEditPoint")
emmet remove:
    user.vscode("editor.emmet.action.removeTag")
emmet (split|join):
    user.vscode("editor.emmet.action.splitJoinTag")
emmet update:
    user.vscode("editor.emmet.action.updateTag")
emmet wrap:
    user.vscode("editor.emmet.action.wrapWithAbbreviation")
emmet wrap lines:
    user.vscode("editor.emmet.action.wrapIndividualLinesWithAbbreviation")
emmet evaluate:
    user.vscode("editor.emmet.action.evaluateMathExpression")
emmet increment:
    user.vscode("editor.emmet.action.incrementNumberByOne")
emmet increment big:
    user.vscode("editor.emmet.action.incrementNumberByTen")
emmet increment small:
    user.vscode("editor.emmet.action.incrementNumberByOneTenth")
emmet decrement:
    user.vscode("editor.emmet.action.decrementNumberByOne")
emmet decrement big:
    user.vscode("editor.emmet.action.decrementNumberByTen")
emmet decrement small:
    user.vscode("editor.emmet.action.decrementNumberByOneTenth")
emmet show:
    user.vscode("workbench.action.showEmmetCommands")

# Git Lens (eamodio.gitlens)
git commit search:
    user.vscode("gitlens.showCommitSearch")
git commit details:
    user.vscode("gitlens.showQuickCommitFileDetails")
git branch history:
    user.vscode("gitlens.showQuickRepoHistory")
git file history:
    user.vscode("gitlens.showQuickFileHistory")
git status:
    user.vscode("gitlens.showQuickRepoStatus")
git blame show:
    user.vscode("gitlens.toggleFileBlame")
git blame switch:
    user.vscode("gitlens.toggleLineBlame")
git lens switch:
    user.show("gitlens.toggleCodeLens")
git zen switch:
    user.vscode("gitlens.toggleZenMode")
git review switch:
    user.vscode("gitlens.toggleReviewMode")
  
