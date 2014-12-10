IROLiNK + Vagrant (for Development Environment)
===============================================


This is a Vagrant setup which was equipped with a standard to required tools for development of IROLiNK.


## 1. Included Packages

- CentOS 6.5
- Nginx 1.7
- uWSGI
- MySQL 5.6
- Python 2.7
- Flask 


## 2. Supported Environment

- Mac OS X
- VirtualBox
- Vagrant


## 3. Installation

At first, You must to fork the [https://github.com/irolink/irolink-local-env](https://github.com/irolink/irolink-local-env) source, and clone the source.

    $ git clone git@github.com:{YOUR GITHUB USERNAME}/irolink-local-env.git
    $ cd irolink-local-env


You must to install some gems.

    $ bundle install --path vendor/bundle


Next, you must to fork the [https://github.com/irolink/irolink-app](https://github.com/irolink/irolink-app) source, and clone the source.

    $ cd /path/to/irolink-local-env
    $ git clone git@github.com:{YOUR GITHUB USERNAME}/irolink-app.git src/irolink-app


You must to copy the sample config (`.env.sample`)

    $ cp .env.sample .env


Edit `.env`

    export IROLINK_LOCAL_ENV_PRIVATE_IP='192.168.55.100'


At last, execute configurations.

    $ source .env && bundle exec vagrant up


## 4. Credential of Environment

- Host Address: Set an address by .env
- SSH: vagrant / vagrant
- MySQL: root / (none)


## 5. How to Develop


