#!/bin/bash
# Install OK.py

conda create -n okpyenv python=3.5
source /anaconda/bin/activate okpyenv
#wget https://raw.githubusercontent.com/Cal-CS-61A-Staff/ok-client/master/requirements.txt
#pip install -r requirements.txt
pip install -U okpy

#test
python -c "from client.api.notebook import Notebook"
