if status is-interactive
	fish_add_path /Users/yhinel/.local/bin
#	alias docker="podman"
	alias pip="pipx"
	alias ll="eza -la"
    	alias ls="eza"
	alias cd="z"
end

eval "$(/opt/homebrew/bin/brew shellenv)"


set -x HOMEBREW_NO_INSTALL_FROM_API "1"

# set -g direnv_fish_mode eval_on_arrow

# Start ssh-agent if it is not already running
# if not pgrep -u $USER ssh-agent > /dev/null
#     eval (ssh-agent -c)
# end

# Add the SSH key to the agent
ssh-add ~/.ssh/gitlab_yhinel
ssh-add ~/.ssh/github_yahikii

# Source
direnv hook fish | source

# Set up zoxide
zoxide init fish | source

# Set up fzf key bindings
fzf --fish | source

# Set up starship
starship init fish | source

# Update Brewfile automatically after installation of apps
if test -f (brew --prefix)/etc/brew-wrap
   source (brew --prefix)/etc/brew-wrap

   function _post_brewfile_update
       echo "🔥 Brewfile was updated! 🔥"
   end
end

