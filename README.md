# devenv

My OSX development environment.

Install [brew](http://brew.sh) and run below setup routine.

## Setup

 * `$ brew tap homebrew/bundle`
 * `$ brew bundle`

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
$ docker run --name nginx_proxy -p 80:80 -v ~/Projects/devenv/nginx-proxy/etc/proxy.conf:/etc/nginx/proxy.conf:ro -v /var/run/docker.sock:/tmp/docker.sock:ro --restart always -d jwilder/nginx-proxy
```

System wide services:

```bash
$ docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=<password> --restart always -d mysql:5.7
$ docker run --name mariadb -p 3307:3306 -e MYSQL_ROOT_PASSWORD=<password> --restart always -d mariadb:10.1
$ docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=<password> --restart always -d postgres
$ docker run --name mongo -p 27017:27017 --restart always -d mongo:3.6
$ docker run --name elasticsearch -p 9200:9200 -e 'xpack.security.enabled=false' -e 'xpack.monitoring.enabled=false' --restart always -d docker.elastic.co/elasticsearch/elasticsearch:5.6.0
$ docker run --name consul -p 8500:8500 -e VIRTUAL_HOST=consul.docker -e VIRTUAL_PORT=8500 --restart always -d consul
```
