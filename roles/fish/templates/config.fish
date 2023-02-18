set -g fish_user_paths "{{ homebrew_prefix }}/bin" "{{ homebrew_prefix }}/sbin" $fish_user_paths

#
# Aliases
#

# Shortcuts
alias p="cd ~/Projects"
alias g="git"
alias h="history"

# List
alias ll="ls -lhF"
alias la="ls -lhaF"

# Docker
alias d="docker"
alias dc="docker-compose"

#
# Exports
#

{% for item in fish_exports | dict2items %}
set -x {{ item.key }} {{ item.value }}
{% endfor %}
