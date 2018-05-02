#!/bin/bash
# Install OK.py

export HOME=$1
cd $HOME

ENV_NAME=okpyenv2

python3 -m venv $ENV_NAME --without-pip
source $ENV_NAME/bin/activate
curl https://bootstrap.pypa.io/get-pip.py | python
deactivate

source $ENV_NAME/bin/activate
wget https://raw.githubusercontent.com/Cal-CS-61A-Staff/ok-client/master/requirements.txt
pip install -r requirements.txt
pip install -U okpy

#test
python -c "from client.api.notebook import Notebook"
deactivate