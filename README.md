# devenv

My OSX development environment.

Install [brew](http://brew.sh) first then run below setup routine.
 
## Setup

 * `$ brew tap homebrew/bundle`
 * `$ brew bundle`
 * `$ ansible-playbook setup.yml`
 * `$ rcup -d dotfile`

## Finalize

 * `$ ssh-keygen -t rsa`

## Docker

 * `$ docker-machine create default --driver virtualbox`
 * `$ docker-machine stop default`
 * `$ VBoxManage modifyvm default --memory 4096`
 * `$ docker-machine start default`
