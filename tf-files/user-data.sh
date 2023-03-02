#! /bin/bash
yum update -y
yum install python3 -y
pip3 install flask
pip3 install flask_mysql
yum install git -y
TOKEN="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" # make sure it is updated!!
GITHUB_USER="tunckasik" # change here for your repo
cd /home/ec2-user && git clone https://$TOKEN@github.com/$GITHUB_USER/phonebook.git
python3 /home/ec2-user/phonebook/phonebook-app.py