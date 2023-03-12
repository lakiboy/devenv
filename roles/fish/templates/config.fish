set -g fish_user_paths "{{ homebrew_prefix }}/bin" "{{ homebrew_prefix }}/sbin" $fish_user_paths

#
# Aliases
#

# Shortcuts
alias p="cd ~/Projects"
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

# GitHub
set -x HOMEBREW_GITHUB_API_TOKEN {{ github_token | mandatory }}
set -x GITHUB_TOKEN {{ github_token | mandatory }}
set -x COMPOSER_AUTH '{"github-oauth": {"github.com": "{{ github_token | mandatory }}"}}'
