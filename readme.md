# `tap.vim`

Often I want to pipe some text from vim into STDIN of a shell command, and see the output of the
shell command without changing the text in the file. That's all this does. It exposes one command
`:Tap`, which takes a range and a shell command... sends the text from that range into the shell
command and then echoes the output of the shell command. That's it. It's exactly the same as `:!`
except it echoes the result rather than replacing the text.

Some of the things I use it for:

* `:Tap wc -w`: Count the words in this file.
* `:'<,'>Tap wc -w`: Count the words in the selected region.
* `:'<,'>Tap xclip -selection -i`: Copy the selected region from vim running in crostini, to the clipboard in
  chromeos.
* `:'<,'>Tap cat > other-file.md`: Create a new file `other-file.md` containing only the selected
  text.
