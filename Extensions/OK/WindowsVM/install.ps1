conda create --name OKenv
activate OKenv
conda install pip
pip install -r https://raw.githubusercontent.com/Cal-CS-61A-Staff/ok-client/master/requirements.txt
conda install ipykernel
python -m ipykernel install --user --name myenv --display-name "OKenv"
conda install jupyter
