curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
python2 get-pip.py
pip2 install --upgrade setuptools
pip2 install pycryptodome -i https://pypi.tuna.tsinghua.edu.cn/simple
pip2 install construct -i https://pypi.tuna.tsinghua.edu.cn/simple
git clone https://github.com/vext01/distorm3.git
cd distorm3
python2 setup.py install
wget http://downloads.volatilityfoundation.org/releases/2.6/volatility-2.6.zip
unzip volatility-2.6.zip
cd volatility-master
python2 setup.py install
wget https://raw.githubusercontent.com/RealityNet/hotoloti/master/volatility/mimikatz.py
mkdir -p /opt/volatility/plugins
cp mimikatz.py /opt/volatility/plugins/
chmod +x /opt/volatility/plugins/mimikatz.py