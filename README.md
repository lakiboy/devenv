# devenv

My OSX development environment.

Install [brew](http://brew.sh) and run below setup routine.

## Setup

 * `$ brew tap homebrew/bundle`
 * `$ brew bundle`

## Docker

 * `$ docker-machine create default --driver virtualbox`
 * `$ docker-machine stop default`
 * `$ VBoxManage modifyvm default --memory 4096`
 * `$ docker-machine start default`
 * `$ eval $(docker-machine env default)`
 * `$ docker-machine-nfs default`

## Configure

 * `$ cp setup.yml.dist setup.yml # Adjust values`
 * `$ ansible-playbook setup.yml`
 * `$ rcup -d dotfiles`

## Finalize

 * `$ ssh-keygen -t rsa`

## Services

Use _LaunchRocket_ pref pane to manage brew services.

Reverse proxy:

```bash
$ docker run --name nginx_proxy -d -p 80:80 --restart always -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy
```

System wide MySQL:

```bash
$ docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=<password> -d mysql:5.6
$ docker run --name mariadb -p 3307:3306 -e MYSQL_ROOT_PASSWORD=<password> -d mariadb:10.1
$ docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=<password> -d postgres
```
