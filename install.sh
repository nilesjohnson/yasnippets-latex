#!/bin/bash
#
# this installs the snippets; to install ya-snippet itself use
# $ cd ~/.emacs.d/plugins
# $ git clone https://github.com/joaotavora/yasnippet
#
# creates 'snippets' directory if needed, and installs into $1/snippets/latex-mode
#
# Check for command line args.
if [ "$1" = "" ]; then
	echo "Usage: ./install.sh yasnippet-dir"
	echo "Example: ./install.sh ~/.emacs.d"
	echo "Example: ./install.sh '~/Library/Preferences/Aquamacs Emacs/Packages'"
	exit 1
fi

# Create the latex-mode dir.
if [ ! -d "$1"/snippets/latex-mode ]; then
	mkdir -p "$1"/snippets/latex-mode
fi

# Copy needed files to the latex-mode dir.
cp snippets/*.yasnippet "$1"/snippets/latex-mode/
cp snippets/.yas-parents "$1"/snippets/latex-mode/
cp snippets/.yas-ignore-filenames-as-triggers "$1"/snippets/latex-mode/
cp snippets/.yas-make-groups "$1"/snippets/latex-mode/

exit 0
