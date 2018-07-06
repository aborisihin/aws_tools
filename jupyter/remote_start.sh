export PATH=/home/ubuntu/miniconda/bin:$PATH

ipython profile create nbserver

printf "\n# Configuration file for ipython-notebook.\n
c = get_config()\n
# Notebook config\n
c.NotebookApp.password = u'"$1"'\n
c.NotebookApp.ip = '*'\n
c.NotebookApp.open_browser = False\n
c.NotebookApp.port = 8888\n" > ~/.ipython/profile_nbserver/ipython_notebook_config.py

jupyter-notebook --config="~/.ipython/profile_nbserver/ipython_notebook_config.py" --certfile=jupyter.pem