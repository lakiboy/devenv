# devenv

My OSX development environment.

## Installation

First install [brew](http://brew.sh) and review the [Brewfile](Brewfile).

#### Software

Run the following:

```bash
$ brew tap homebrew/bundle
$ brew bundle
```

#### SSH

Generate new key (easier without the passphrase):

```bash
$ ssh-keygen -t rsa
```

#### Configure

Copy setup variables and adjust values:

```bash
$ cp playbooks/setup_vars.yml.dist playbooks/setup_vars.yml
```

Run the playbook:

```bash
$ ansible-playbook --ask-become-pass -i playbooks/hosts playbooks/setup.yml
```

Link generated dotfiles to home directory:

```bash
$ rcup -d dotfiles
```

#### Services

Run _Dnsmasq_:

```bash
$ sudo brew services start dnsmasq
```

Test DNS is working:

```bash
$ ping anything.docker
```
