title: /.* - Visual Studio Code$/
-

take line up: user.vscode("metaGo.selectLineUp")
action(edit.select_line): user.vscode("metaGo.selectLineDown")

bracket switch: user.vscode("metaGo.changeSurroundingPair")
bracket select: user.vscode("metaGo.inSurroundingPairSelection")
bracket take: user.vscode("metaGo.inSurroundingPairSelectionWithPairs")
bracket jump: user.vscode("metaGo.jumpToBracket")

jump to: user.vscode("metaGo.gotoSmart")
jump before: user.vscode("metaGo.gotoBefore")
jump after: user.vscode("metaGo.gotoAfter")
jump line up: user.vscode("metaGo.gotoEmptyLineUp")
jump line [down]: user.vscode("metaGo.gotoEmptyLineDown")

take to: user.vscode("metaGo.selectSmart")
take before: user.vscode("metaGo.selectBefore")
take after: user.vscode("metaGo.selectAfter")
take block up: user.vscode("metaGo.selectEmptyLineUp")
take block [down]: user.vscode("metaGo.selectEmptyLineDown")

cursor add: user.vscode("metaGo.addCursorSmart")
cursor add before: user.vscode("metaGo.addCursorBefore")
cursor add after: user.vscode("metaGo.addCursorAfter")
