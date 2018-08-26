# Welcome message to decrease productivity
if ! [ -n "$TMUX" ]; then
    fortune | cowsay;
fi

for x in $HOME/bin $HOME/.cargo/bin usr/local/sbin /usr/local/bin; do
    if [[ ! -d $x ]]; then
        echo "Warning, path $x does not exist, skipping adding it to PATH" >&2
        continue
    fi
    case ":$PATH:" in
        *":$x:"*) :;; # already there
        *) export PATH="$x:$PATH";;
    esac
done

# Virtualenv setup.
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Source other config files
for file in ~/.{bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done
unset file

# Vim-like keybindings
set -o vi

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add `killall` tab completion for common apps
if [[ `uname` == 'Darwin' ]]; then
    complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal iTerm" killall;
fi
