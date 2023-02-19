# My OSX development environment

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/lakiboy/devenv/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/lakiboy/devenv/tree/master)

IaC way to manage local development environment.

## Requirements

#### Apple CLI tools

Launch the installer:

```bash
xcode-select --install
```

#### Brew

Install [brew](http://brew.sh).

#### Ansible

Install ansible:

```bash
brew install ansible
```

Download dependencies (optional):

```bash
ansible-galaxy install -r requirements.yml
```

## Usage

Install software:

```bash
ansible-playbook playbooks/software.yml
```

Configure _CLI_ and dotfiles:

```bash
ansible-playbook playbooks/cli.yml
```

Generate _SSH_ key:

```bash
ansible-playbook playbooks/keys.yml
```

Run _Docker_:

```bash
ansible-playbook playbooks/docker.yml
```
