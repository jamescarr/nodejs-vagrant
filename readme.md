# Awesomebox
This is my chef+vagrant setup for node.js development. It's currently a
work in progress but out of the box it'll give you

* mongodb 2.0.2
* rabbitmq 2.7.1 (with the management console enabled)
* node.js 0.6.8
* coffee-script
* nginx

## Running it
Requires that you have a vagrant box named lucid32 installed.

```bash
git clone git@github.com:jamescarr/nodejs-vagrant.git
cd nodejs-vagrant
git submodule init && git submodule update
vagrant up
```

## Soon!

* Companion node.js app that uses capistrano to deploy
