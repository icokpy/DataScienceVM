#!/bin/bash
# Install OK.py
username="${1}"

if [ -z "${username}" ]; then
  echo "no username :(" >> /tmp/debug-deploy
  exit 1
else
  echo "username: ${username}" >> /tmp/debug-deploy
fi

venv_path="/home/${username}/okpyenv2"

python3 -m venv "${venv_path}" --without-pip

curl https://bootstrap.pypa.io/get-pip.py | "${venv_path}/bin/python"

"${venv_path}/bin/pip" install okpy

"${venv_path}/bin/python" -c "from client.api.notebook import Notebook"

chown -R $username $venv_path
