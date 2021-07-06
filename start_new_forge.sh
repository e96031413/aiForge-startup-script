sudo apt update
pip install selenium twder beautifulsoup4
pip install torch==1.7.1+cu92 torchvision==0.8.2+cu92 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html
pip install tensorflow-gpu==2.0.0
conda install -y tsnecuda cuda100 -c cannylab

# grad-cam
pip uninstall -y enum34
pip install grad-cam
pip install ttach

sudo apt-get install cron -y
sudo apt-get install xvfb -y
sudo apt-get install chromium-browser -y
# dpkg --configure -a
# apt-get install -f
# chromium-browser -version: check installed version
wget https://chromedriver.storage.googleapis.com/90.0.4430.24/chromedriver_linux64.zip   # check version number here: https://chromedriver.storage.googleapis.com/
unzip chromedriver_linux64.zip && rm chromedriver_linux64.zip
mv chromedriver /usr/bin/
sudo /usr/sbin/service cron start
(crontab -l 2>/dev/null; echo "0 * * * * /opt/conda/bin/python3.6 /root/notebooks/nfs/work/yanwei.liu/WebCrawler/PM25_Line_Sender.py") | crontab -
(crontab -l 2>/dev/null; echo "0 7 * * 2,3,4,5,6 /opt/conda/bin/python3.6 /root/notebooks/nfs/work/yanwei.liu/WebCrawler/us-stock.py") | crontab -
(crontab -l 2>/dev/null; echo "0 12 * * 1-5 /opt/conda/bin/python3.6 /root/notebooks/nfs/work/yanwei.liu/WebCrawler/Currency_Sender.py") | crontab -
(crontab -l 2>/dev/null; echo "0 9 * * 1-6 /opt/conda/bin/python3.6 /root/notebooks/nfs/work/yanwei.liu/WebCrawler/auto-search-flask-job-email/main.py") | crontab -
