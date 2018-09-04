#!/bin/bash
#
# this installs the snippets; to install ya-snippet itself use
# $ cd ~/.emacs.d/plugins
# $ git clone --recursive https://github.com/joaotavora/yasnippet
#
#
# Check for command line args.
if [ "$1" = "" ]; then
	echo "Usage: ./install.sh yasnippet-dir"
	echo "Example: ./install.sh ~/.emacs.d/plugins/yasnippet"
	exit 1
fi

# Create the latex-mode dir.
if [ ! -d "$1"/snippets/latex-mode ]; then
	mkdir "$1"/snippets/latex-mode
fi

# Copy needed files to the latex-mode dir.
cp snippets/*.yasnippet "$1"/snippets/latex-mode/
cp snippets/.yas-parents "$1"/snippets/latex-mode/
cp snippets/.yas-ignore-filenames-as-triggers "$1"/snippets/latex-mode/
cp snippets/.yas-make-groups "$1"/snippets/latex-mode/

exit 0
