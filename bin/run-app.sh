#! /bin/sh

pkill -KILL uwsgi
mkdir /home/vagrant/.venv/
virtualenv --python=`which python2.7` /home/vagrant/.venv/
source /home/vagrant/.venv/bin/activate
pip install -r /vagrant/src/irolink-app/requirements.txt
uwsgi --ini /vagrant/src/irolink-app/src/config/uwsgi-local-web.ini

exit 0
