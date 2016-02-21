# devenv

My OSX development environment.

First download App Store managed apps.
Then install [brew](http://brew.sh) and run below setup routine.
 
## Setup

 * `$ brew tap homebrew/bundle`
 * `$ brew bundle`
 * `$ cp setup.yml.dist setup.yml # Adjust values`
 * `$ ansible-playbook setup.yml`
 * `$ rcup -d dotfile`

## Finalize

 * `$ ssh-keygen -t rsa`

## Docker

 * `$ docker-machine create default --driver virtualbox`
 * `$ docker-machine stop default`
 * `$ VBoxManage modifyvm default --memory 4096`
 * `$ docker-machine start default`

Setting up [nfs](https://github.com/adlogix/docker-machine-nfs) with Docker.

## Services

 * Use LaunchRocket pref pane to manage brew services.
