# Aliases migrated from ~/.alias.zsh (translated to fish).
# Secrets and project-specific bits stay in config.local.fish (untracked).

if status --is-interactive
    # tmux (tmux/ta/tn/tls already in abbrs.fish)
    abbr -a tks 'tmux kill-session -t'
    abbr -a tss 'tmux start-server'

    # misc
    abbr -a ll 'ls -l'
    abbr -a dm 'docker-machine'
    abbr -a dcp 'docker-compose'
    abbr -a ma './manage.py'
    abbr -a et 'nvim ~/.tmux.conf'
    abbr -a ef 'nvim ~/.config/fish/config.fish'
    abbr -a swp 'find . -type f -name ".*.swp"'

    # git
    abbr -a gco 'git checkout'
    abbr -a gci 'git commit'
    abbr -a gcm 'git commit -m'
    abbr -a gst 'git status'
    abbr -a gs 'git status -s'
    abbr -a gbr 'git branch'
    abbr -a gdf 'git diff'
    abbr -a ga 'git add'
    abbr -a gaa 'git add --all'
    abbr -a glg 'git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"'
    abbr -a glast 'git log -1 HEAD'
    abbr -a ghist 'git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
    abbr -a gunstage 'git reset HEAD --'
    abbr -a gundo 'git reset --soft HEAD~1'
    abbr -a gdiscard 'git checkout --'
    abbr -a gamend 'git commit --amend'
    abbr -a gpom 'git pull origin (git rev-parse --abbrev-ref HEAD)'
    abbr -a gpoh 'git push origin HEAD'
    abbr -a gfa 'git fetch --all'
    abbr -a gpr 'git pull --rebase'
    abbr -a gempty 'git commit --allow-empty -m "Empty commit"'
    abbr -a gcleanup 'git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
    abbr -a grebi 'git rebase -i'
    abbr -a gconf 'git config --list'
    abbr -a gfiles 'git show --pretty="format:" --name-only'

    # git stash
    abbr -a gsta 'git stash apply'
    abbr -a gstp 'git stash pop'
    abbr -a gstl 'git stash list'
end
