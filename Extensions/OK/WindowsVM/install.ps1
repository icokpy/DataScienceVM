conda create --name OKenv
activate OKenv
conda install -y pip
pip install -r https://raw.githubusercontent.com/Cal-CS-61A-Staff/ok-client/master/requirements.txt
conda install -y ipykernel
python -m ipykernel install --user --name myenv --display-name "OKenv"
conda install -y jupyter
