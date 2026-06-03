# Tool integrations migrated from zsh (.zprofile / .zshrc)

# Homebrew: sets PATH, MANPATH, etc. (was in .zprofile)
if test -x /opt/homebrew/bin/brew
    /opt/homebrew/bin/brew shellenv | source
end

# pyenv
set -gx PYENV_ROOT $HOME/.pyenv
if test -d $PYENV_ROOT/bin
    fish_add_path $PYENV_ROOT/bin
end
if type -q pyenv
    pyenv init - fish | source
end

# direnv
if type -q direnv
    direnv hook fish | source
end
