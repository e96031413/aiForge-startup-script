apt update
apt upgrade -y

pip install -U scikit-learn
pip install selenium twder beautifulsoup4 seaborn thop tqdm pytorch_metric_learning openpyxl natsort tensorboard_logger
pip install pandas seaborn numpy scikit-learn pycave

pip install tensorboard timm tensorboardX six pyro-ppl

# grad-cam
pip uninstall -y enum34
pip install grad-cam
pip install ttach

apt install cron -y
apt install xvfb -y
apt install chromium-browser -y

# chromium-browser -version: check installed version
wget https://chromedriver.storage.googleapis.com/90.0.4430.24/chromedriver_linux64.zip   # check version number here: https://chromedriver.storage.googleapis.com/
unzip chromedriver_linux64.zip && rm chromedriver_linux64.zip
mv chromedriver /usr/bin/
sudo /usr/sbin/service cron start
(crontab -l 2>/dev/null; echo "0 0 * * 0-6 /opt/conda/bin/python3.6 /root/notebooks/nfs/work/yanwei.liu/WebCrawler/PM25_Line_Sender.py") | crontab -
(crontab -l 2>/dev/null; echo "0 4 * * 0-6 /opt/conda/bin/python3.6 /root/notebooks/nfs/work/yanwei.liu/WebCrawler/PM25_Line_Sender.py") | crontab -
(crontab -l 2>/dev/null; echo "0 8 * * 0-6 /opt/conda/bin/python3.6 /root/notebooks/nfs/work/yanwei.liu/WebCrawler/PM25_Line_Sender.py") | crontab -
(crontab -l 2>/dev/null; echo "0 12 * * 0-6 /opt/conda/bin/python3.6 /root/notebooks/nfs/work/yanwei.liu/WebCrawler/PM25_Line_Sender.py") | crontab -
(crontab -l 2>/dev/null; echo "0 16 * * 0-6 /opt/conda/bin/python3.6 /root/notebooks/nfs/work/yanwei.liu/WebCrawler/PM25_Line_Sender.py") | crontab -
(crontab -l 2>/dev/null; echo "0 20 * * 0-6 /opt/conda/bin/python3.6 /root/notebooks/nfs/work/yanwei.liu/WebCrawler/PM25_Line_Sender.py") | crontab -
(crontab -l 2>/dev/null; echo "0 7 * * 2,3,4,5,6 /opt/conda/bin/python3.6 /root/notebooks/nfs/work/yanwei.liu/WebCrawler/us-stock.py") | crontab -
(crontab -l 2>/dev/null; echo "0 12 * * 0-6 /opt/conda/bin/python3.6 /root/notebooks/nfs/work/yanwei.liu/WebCrawler/Currency_Sender.py") | crontab -
(crontab -l 2>/dev/null; echo "0 9 * * 0-6 /opt/conda/bin/python3.6 /root/notebooks/nfs/work/yanwei.liu/WebCrawler/auto-search-flask-job-email/main.py") | crontab -
