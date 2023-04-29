
yum update -y
yum install python3 -y
pip3 install flask
pip3 install flask_mysql
yum install git -y

# Clone the repo
cd /home/ec2-user && git clone https://github.com/tunckasik/${github_repo_name}.git
# Start the Phonebook Application
python3 /home/ec2-user/${github_repo_name}/phonebook-app.py