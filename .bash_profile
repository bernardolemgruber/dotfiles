# Copy following line to the root .bash_profile after clonning 'dotfiles' repo to your /git folder
# source ~/git/dotfiles/.bash_profile;
# My dotfiles repo is open at: https://github.com/bernardolemgruber/dotfiles

# NOW, LET'S PLAY:

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/git/dotfiles/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Add tab completion for many Bash commands
# if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_comple$
#         source "$(brew --prefix)/share/bash-completion/bash_completion";
# elif [ -f /etc/bash_completion ]; then
#         source /etc/bash_completion;
# fi;
