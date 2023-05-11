cd /usr/local/bin
mkdir menousdb-source-code
cd menousdb-source-code
curl -o api.py https://raw.githubusercontent.com/snehashish090/MenousDB-Official/stable/src/api.py
curl -o auth.py https://raw.githubusercontent.com/snehashish090/MenousDB-Official/stable/src/auth.py
curl -o models.py https://raw.githubusercontent.com/snehashish090/MenousDB-Official/stable/src/models.py
curl -o requirements.txt https://raw.githubusercontent.com/snehashish090/MenousDB-Official/stable/requirements.txt
pip3 install -r requirements.txt
pip3 install pyinstaller
python3 -m pyinstaller api.py --onefile
mv dist/api /usr/local/bin/menousdb
cd /usr/local/bin
rm -r menousdb-source-code
