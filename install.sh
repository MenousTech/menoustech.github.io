cd /usr/local/bin
mkdir menousdb-source-code
cd menousdb-source-code
curl -o api.py https://snehashish090.github.io/src/api.py
curl -o auth.py https://snehashish090.github.io/src/auth.py
curl -o models.py https://snehashish090.github.io/src/models.py

curl -o requirements.txt https://snehashish090.github.io/requirements.txt
pip3 install -r requirements.txt
pip3 install pyinstaller
echo "export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/3.11/bin/" >> ~/.zshrc
echo "export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/3.11/bin/" >> ~/.bashrc
pyinstaller api.py --onefile
mv dist/api /usr/local/bin/menousdb
cd /usr/local/bin
rm -r menousdb-source-code
