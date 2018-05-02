#!/bin/bash
# Install OK.py

source /anaconda/bin/activate py35
#wget https://raw.githubusercontent.com/Cal-CS-61A-Staff/ok-client/master/requirements.txt
#pip install -r requirements.txt
pip install -U okpy

#test
python -c "from client.api.notebook import Notebook"
