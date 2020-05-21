# http://nuclearsquid.com/writings/git-tricks-tips-workflows/
# Allow all Git commands to use colored output, if possible
git config --global color.ui auto
# Disable “how to stage/unstage/add” hints given by git status:
git config --global advice.statusHints false
# Tell git diff to use mnemonic prefixes
# (index, work tree, commit, object) instead of the standard a and b notation:
git config --global diff.mnemonicprefix true
# Always show a diffstat at the end of a merge
git config --global merge.stat true
# global exclude file
git config --global core.excludesfile '~/.gitignore'

# a better git log
# https://coderwall.com/p/euwpig
git config --global alias.ls \
	"log --color --graph --pretty=format:'%Cred%h%Creset \
	 -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' \
	 --abbrev-commit"
git config --global alias.s \
	"status"
git config --global alias.co \
	"checkout"

git config --global core.editor "vim"

# Set git to use the osxkeychain credential helper
git config --global credential.helper osxkeychain

# When referring directly to an object identifier, it is usually not necessary to
# quote the entire 40-character hexadecimal SHA-1 value; any initial substring unique
# to the current context will do. You can tell Git to abbreviate commit IDs generally with:
git config --global log.abbrevCommit yes
git config --global core.abbrev 8
