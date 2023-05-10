wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b  -p ./miniconda -f
source miniconda/bin/activate
python -m pip install -r requirements.txt
mkdir modules
cd modules
git clone -b release/v0.1.0 git@github.com:xsuite/tree_maker.git
python -m pip install -e tree_maker
git clone https://github.com/xsuite/xmask.git
cd xmask
git submodule init
git submodule update
pip install -e .
cd ../../
xsuite-prebuild

