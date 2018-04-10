# Installing Miniconda
wget -c http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p /home/ubuntu/miniconda
export PATH=/home/ubuntu/miniconda/bin:$PATH

#Installing neccesary libraries
conda install -y numpy scipy pandas scikit-learn matplotlib tqdm jupyter

#Can add whatever you want to install
sudo apt-get -qq install vowpal-wabbit
sudo apt-get -qq install git

#git
git clone https://aborisihin:alpine1560l@bitbucket.org/aborisihin/mlda_learn.git
cd ./mlda_learn
git checkout develop
cd ./..
