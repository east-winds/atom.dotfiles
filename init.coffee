# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

atom.commands.add 'atom-text-editor', 'custom:add-code-newline', ->
  editor = atom.workspace.getActiveTextEditor()
  code_newline = atom.config.get('editor.code_newline')
  editor.insertText(" #{code_newline}\n")

atom.commands.add 'atom-text-editor', 'custom:copy-code-newline', ->
  editor = atom.workspace.getActiveTextEditor()
  code_newline = editor.getSelectedText()
  atom.config.set('editor.code_newline',code_newline)

atom.commands.add 'atom-text-editor', 'custom:print-rightarrow', ->
  editor = atom.workspace.getActiveTextEditor()?.insertText('→')

atom.commands.add 'atom-text-editor', 'custom:print-leftarrow', ->
  editor = atom.workspace.getActiveTextEditor()?.insertText('←')

atom.commands.add 'atom-text-editor', 'custom:print-downarrow', ->
  editor = atom.workspace.getActiveTextEditor()?.insertText('↓')

atom.commands.add 'atom-text-editor', 'custom:print-uparrow', ->
  editor = atom.workspace.getActiveTextEditor()?.insertText('↑')

atom.commands.add 'atom-text-editor', 'custom:print-dblrightarrow', ->
  editor = atom.workspace.getActiveTextEditor()?.insertText('⇒')

atom.commands.add 'atom-text-editor', 'custom:print-dblleftarrow', ->
  editor = atom.workspace.getActiveTextEditor()?.insertText('⇐')
