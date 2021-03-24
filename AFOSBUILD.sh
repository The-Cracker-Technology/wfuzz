rm -rf /opt/ANDRAX/wfuzz

mkdir /opt/ANDRAX/wfuzz

cp -Rf andraxbin/* /opt/ANDRAX/bin

chmod -R 755 /opt/ANDRAX/bin

WORKDIR=$(pwd)

cd /opt/ANDRAX/wfuzz

python3 -m venv wfuzzenv

cd $WORKDIR

source /opt/ANDRAX/wfuzz/wfuzzenv/bin/activate

python3 setup.py install

deactivate
