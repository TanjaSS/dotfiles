if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

fish_add_path ~/.local/bin

# Plugins
fundle plugin "edc/bass"
fundle plugin "FabioAntunes/fish-nvm"
fundle plugin "pure-fish/pure"

fundle init

# Remove the default Fish greeting
set fish_greeting

# Prompt configuration
set --universal pure_enable_single_line_prompt true
set --universal pure_color_git_branch green

# Aliases
alias gr="grep -rn"

# Git aliases
alias g="git"
alias grc="git add .; and git rebase --continue"
alias grm="git rebase -i master"

# SSH Agent
if set -q SSH_CONNECTION; and not ssh-add -l > /dev/null
    ssh-add
end
