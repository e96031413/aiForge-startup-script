apt update
pip install selenium twder beautifulsoup4

apt-get install cron
apt-get install xvfb
apt-get install chromium-browser
# dpkg --configure -a
# apt-get install -f
# chromium-browser -version: check installed version
wget https://chromedriver.storage.googleapis.com/90.0.4430.24/chromedriver_linux64.zip   # check version number here: https://chromedriver.storage.googleapis.com/
unzip chromedriver_linux64.zip && rm chromedriver_linux64.zip
mv chromedriver /usr/bin/
sudo /usr/sbin/service cron start
(crontab -l 2>/dev/null; echo "0 * * * * /usr/bin/python /root/notebooks/nfs/work/yanwei.liu/WebCrawler/PM25_Line_Sender.py") | crontab -
(crontab -l 2>/dev/null; echo "0 7 * * 2,3,4,5,6 /usr/bin/python /root/notebooks/nfs/work/yanwei.liu/WebCrawler/us-stock.py") | crontab -
(crontab -l 2>/dev/null; echo "0 12 * * 1-5 /usr/bin/python /root/notebooks/nfs/work/yanwei.liu/WebCrawler/Currency_Sender.py") | crontab -
(crontab -l 2>/dev/null; echo "0 9 * * 1-6 /usr/bin/python /root/notebooks/nfs/work/yanwei.liu/WebCrawler/auto-search-flask-job-email/main.py") | crontab -
