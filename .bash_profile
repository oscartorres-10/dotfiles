# https://medium.com/fuzzy-code/show-current-git-branch-in-terminal-macos-e319e88046a6
# Git branch in prompt.
# parse_git_branch() {
# git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
# }
# export PS1="\u@\h \W\[\033[00;35m\]$(parse_git_branch)\[\033[00m\] $ "

# https://github.com/mathiasbynens/dotfiles
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;