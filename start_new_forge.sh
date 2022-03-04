sudo apt update
pip install selenium twder beautifulsoup4
pip install torch==1.7.1+cu92 torchvision==0.8.2+cu92 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html  #目前aiForge環境(CUDA=10.0)最高只支援到1.7.1版本
pip install tensorboard==1.15
pip install /root/notebooks/nfs/work/yanwei.liu/tsne-cuda/tsnecuda-2.1.0-py2.py3-none-any.whl
# pip install tensorflow-gpu==2.0.0
pip install pyro-ppl==1.5.1 # PyTorch version >= 1.6.0

# grad-cam
pip uninstall -y enum34
pip install grad-cam
pip install ttach

sudo apt-get install cron -y
sudo apt-get install xvfb -y
sudo apt-get install chromium-browser -y

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
