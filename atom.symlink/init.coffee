# Init script:
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.

path = require 'path'

atom.workspace.observeTextEditors (editor) ->

  editor.onDidSave ->
    console.log "Saved! #{editor.getPath()}"

  if path.extname(editor.getPath()) is '.md'
    editor.setSoftWrap(true)
