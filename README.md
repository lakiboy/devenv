# devenv

My OSX development environment.

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
