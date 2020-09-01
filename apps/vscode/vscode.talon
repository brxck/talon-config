title: /.* - Visual Studio Code$/
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.snippets
tag(): user.tabs

#talon app actions
action(app.tab_close):
	user.vscode("workbench.action.closeActiveEditor")
action(app.tab_next):
	user.vscode("workbench.action.nextEditorInGroup")
action(app.tab_previous):
	user.vscode("workbench.action.previousEditorInGroup")
action(app.tab_reopen):
	user.vscode("workbench.action.reopenClosedEditor")
action(app.window_close):
	user.vscode("workbench.action.closeWindow")
action(app.window_open):
	user.vscode("workbench.action.newWindow")

#talon code actions
action(code.toggle_comment):
	user.vscode("editor.action.commentLine")

#talon edit actions
action(edit.indent_less):
	user.vscode("editor.action.outdentLines")
action(edit.indent_more):
	user.vscode("editor.action.indentLines")
action(edit.jump_line):
    user.vscode("workbench.action.gotoLine")
action(edit.delete_word):
	actions.edit.select_word()
	actions.edit.delete()
action(edit.delete_line): 
    user.vscode("editor.action.deleteLines")
action(edit.line_insert_down):
	user.vscode("editor.action.insertLineAfter")
action(edit.line_insert_up):
	user.vscode("editor.action.insertLineBefore")
action(edit.line_swap_up):
	user.vscode("editor.action.moveLinesUpAction")
action(edit.line_swap_down):
    user.vscode("editor.action.moveLinesDownAction")
action(edit.select_line):
	user.vscode("expandLineSelection")
action(edit.select_none):
	user.vscode("cancelSelection")
action(edit.select_word):
	user.vscode("editor.action.addSelectionToNextFindMatch")

tag(): splits # splits.py
action(user.split_clear_all):
	user.vscode("workbench.action.editorLayoutSingle")
action(user.split_clear):
	user.vscode("workbench.action.joinTwoGroups")
action(user.split_flip):
	user.vscode("workbench.action.toggleEditorGroupLayout") 
action(user.split_last):
	user.vscode("workbench.action.focusLeftGroup")
action(user.split_next):  user.vscode("workbench.action.focusRightGroup")
action(user.split_window_down):
	user.vscode("workbench.action.moveEditorToBelowGroup")
action(user.split_window_horizontally):
	user.vscode("workbench.action.splitEditorOrthogonal")
action(user.split_window_left):
	user.vscode("workbench.action.moveEditorToLeftGroup")
action(user.split_window_right):
	user.vscode("workbench.action.moveEditorToRightGroup")
action(user.split_window_up):
	user.vscode("workbench.action.moveEditorToAboveGroup")
action(user.split_window_vertically):
	user.vscode("workbench.action.splitEditor")
action(user.split_window):
	user.vscode("workbench.action.splitEditor")

tag(): user.multiple_cursors # multiple_cursor.py
action(user.multi_cursor_add_above):
	user.vscode("editor.action.insertCursorAbove")
action(user.multi_cursor_add_below):
	user.vscode("editor.action.insertCursorBelow")
action(user.multi_cursor_add_to_line_ends):
	user.vscode("editor.action.insertCursorAtEndOfEachLineSelected")
action(user.multi_cursor_disable):
	key(escape)
action(user.multi_cursor_enable):
	skip()
action(user.multi_cursor_select_all_occurrences):
	user.vscode("editor.action.selectHighlights")
action(user.multi_cursor_select_fewer_occurrences):
	user.vscode("cursorUndo")
action(user.multi_cursor_select_more_occurrences):
	user.vscode("editor.action.addSelectionToNextFindMatch")

command [<user.text>]: 
  user.vscode("workbench.action.showCommands")
  insert(user.text or "")

# Sidebar
bar explore:
	user.vscode("workbench.view.explorer")
bar extensions:
	user.vscode("workbench.view.extensions")
bar outline:
	user.vscode("outline.focus")
bar run:
	user.vscode("workbench.view.debug")
bar search:
	user.vscode("workbench.view.search")
bar source:
	user.vscode("workbench.view.scm")
bar switch:
	user.vscode("workbench.action.toggleSidebarVisibility")

# Panels
panel control:
	user.vscode("workbench.panel.repl.view.focus")
panel output:
	user.vscode("workbench.panel.output.focus")
panel problems:
	user.vscode("workbench.panel.markers.view.focus")
panel switch:
	user.vscode("workbench.action.togglePanel")
panel terminal:
	user.vscode("workbench.panel.terminal.focus")

# Settings
show settings:
	user.vscode("workbench.action.openGlobalSettings")
show shortcuts:
	user.vscode("workbench.action.openGlobalKeybindings")
show snippets:
	user.vscode("workbench.action.openSnippets")

# Display
center switch:
	user.vscode("workbench.action.toggleCenteredLayout")
fullscreen switch:
	user.vscode("workbench.action.toggleFullScreen")
theme switch:
	user.vscode("workbench.action.selectTheme")
wrap switch:
	user.vscode("editor.action.toggleWordWrap")
zen switch:
	user.vscode("workbench.action.toggleZenMode")

# File Commands
file open:
    user.vscode("workbench.action.files.openFile")
folder open:
    user.vscode("workbench.action.files.openFolder")
go to [<user.text>]: 
  user.vscode("workbench.action.quickOpen")
  insert(text or "")
file copy path:
	user.vscode_ignore_clipboard("copyFilePath") 
file new:
	user.vscode("explorer.newFile")  
editor new:
	user.vscode("workbench.action.files.newUntitledFile")
file open folder:
	user.vscode("revealFileInOS")
file rename:
	user.vscode("renameFile")
file reveal:
	user.vscode("workbench.files.action.showActiveFileInExplorer")
save as:
    user.vscode("workbench.action.files.saveAs")
save all:
    user.vscode("workbench.action.files.saveAll")
save ugly:
    user.vscode("workbench.action.files.saveWithoutFormatting")
save closed:
    user.vscode("workbench.action.closeUnmodifiedEditors")

# Language Features
suggest show:
	user.vscode("editor.action.triggerSuggest")
hint show:
	user.vscode("editor.action.triggerParameterHints")
definition show:
	user.vscode("editor.action.revealDefinition")
definition peek:
	user.vscode("editor.action.peekDefinition")
definition side:
	user.vscode("editor.action.revealDefinitionAside")
references show:
	user.vscode("editor.action.goToReferences")
references find:
	user.vscode("references-view.find")
format that:
	user.vscode("editor.action.formatDocument")
format selection:
	user.vscode("editor.action.formatSelection")
imports fix:
	user.vscode("editor.action.organizeImports")
problem next:
	user.vscode("editor.action.marker.nextInFiles")
problem last:
	user.vscode("editor.action.marker.prevInFiles")
problem fix:
	user.vscode("problems.action.showQuickFixes")
whitespace trim:
	user.vscode("editor.action.trimTrailingWhitespace")
language switch:
	user.vscode("workbench.action.editor.changeLanguageMode")
refactor name:
	user.vscode("editor.action.rename")
refactor this:
	user.vscode("editor.action.refactor")

#code navigation
(go declaration | follow):
	user.vscode("editor.action.revealDefinition")
go back:
	user.vscode("workbench.action.navigateBack") 
go forward:  user.vscode("workbench.action.navigateForward")  
go implementation:
	user.vscode("editor.action.goToImplementation")
go recent:
	user.vscode("workbench.action.openRecent")
go type:
	user.vscode("editor.action.goToTypeDefinition")
go usage:
	user.vscode("references-view.find")

# Folding
fold that:
	user.vscode("editor.fold")
unfold that:
	user.vscode("editor.unfold")
fold those:
	user.vscode("editor.foldAllMarkerRegions")
unfold those:
	user.vscode("editor.unfoldRecursively")
fold all:
	user.vscode("editor.foldAll")
unfold all:
	user.vscode("editor.unfoldAll")
fold comments:
	user.vscode("editor.foldAllBlockComments")

# Git / Github (not using verb-noun-adjective pattern, mirroring terminal commands.)
git branch:
	user.vscode("git.branchFrom")
git branch this:
	user.vscode("git.branch")
git checkout:
	user.vscode("git.checkout")
git commit:
	user.vscode("git.commitStaged")
git commit undo:
	user.vscode("git.undoCommit")
git commit ammend:
	user.vscode("git.commitStagedAmend")
git diff:
	user.vscode("git.openChange")
git ignore:
	user.vscode("git.ignore")
git merge:
	user.vscode("git.merge")
git output:
	user.vscode("git.showOutput")
git pull:
	user.vscode("git.pullRebase")
git push:
	user.vscode("git.push")
git push focus:
	user.vscode("git.pushForce")
git rebase abort:
	user.vscode("git.rebaseAbort")
git reveal:
	user.vscode("git.revealInExplorer")
git revert:
	user.vscode("git.revertChange")
git stash:
	user.vscode("git.stash")
git stash pop:
	user.vscode("git.stashPop")
git stage:
	user.vscode("git.stage")
git stage all:
	user.vscode("git.stageAll")
git unstage:
	user.vscode("git.unstage")
git unstage all:
	user.vscode("git.unstageAll")

# Debugging
break point:
	user.vscode("editor.debug.action.toggleBreakpoint")
step over:
	user.vscode("workbench.action.debug.stepOver")
debug step into:
	user.vscode("workbench.action.debug.stepInto")
debug step out [of]:
	user.vscode("workbench.action.debug.stepOut")
debug start:
	user.vscode("workbench.action.debug.start")
debug pause:
	user.vscode("workbench.action.debug.pause")
debug stopper:
	user.vscode("workbench.action.debug.stop")
debug continue:
	user.vscode("workbench.action.debug.continue")
debug restart:
	user.vscode("workbench.action.debug.restart")

# Terminal
terminal external:
	user.vscode("workbench.action.terminal.openNativeConsole")
terminal new:
	user.vscode("workbench.action.terminal.new")
terminal next:
	user.vscode("workbench.action.terminal.focusNextPane")
terminal last:
    user.vscode("workbench.action.terminal.focusPreviousPane")
terminal split:
	user.vscode("workbench.action.terminal.split")
terminal trash:
	user.vscode("workbench.action.terminal.kill")
terminal scroll up:
	user.vscode("workbench.action.terminal.scrollUp")
terminal scroll down:
	user.vscode("workbench.action.terminal.scrollDownPage")

# TODO: should this be added to linecommands?
copy [line] down:
	user.vscode("editor.action.copyLinesDownAction")
copy [line] up:
	user.vscode("editor.action.copyLinesUpAction")

select less:
	user.vscode("editor.action.smartSelect.shrink")
select more:
	user.vscode("editor.action.smartSelect.expand")

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
  
