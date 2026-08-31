# My OSX development environment

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/lakiboy/devenv/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/lakiboy/devenv/tree/master)

IaC way to manage local development environment.

Roles included in this collection:

 - `dotfiles`
 - `fish`
 - `git`

## Install Apple CLI tools

Launch the installer:

```console
xcode-select --install
```

## Install Homebrew

Go to [brew.sh](https://brew.sh) and follow setup instructions.

By default, _macOS_ uses [zsh](https://www.zsh.org) (we will switch it later). Make sure to complete _brew_ setup for _zsh_ for now.<br>
Run commands proposed by your installation process

## GitHub token

Create [new token](https://github.com/settings/tokens/new) on _GitHub_. For simplicity choose _classic_ token type.
Make sure to give full control to private repositories.

## Install ansible

Install pyenv manually:

```console
brew install pyenv-virtualenv
```

Setting up Python:

```console
pyenv install 3.14.6
pyenv virtualenv 3.14.6 ansible
pyenv activate ansible
```

Installing dependencies:

```console
pip install ansible ansible-lint
ansible-galaxy install -r requirements.yml
```

You're ready to run _Ansible_ playbooks now.

## Review configuration

Default configuration is located at [default.config.yml](default.config.yml).

Create your own configuration (ignored by _git_) and adjust values:

```console
cp default.config.yml config.yml
```

Both _default.config.yml_ and _config.yml_ will be loaded by _Ansible_.

## Run playbooks

When configuration file is ready you can run the playbooks one-by-one.

Install software:

```console
ansible-playbook playbooks/software.yml
```

Configure _CLI_ and dotfiles:

```console
ansible-playbook playbooks/cli.yml
```

Generate _SSH_ key:

```console
ansible-playbook playbooks/keys.yml
```
