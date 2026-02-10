#!/bin/bash
exec > >(tee /var/log/user-data.log | logger -t user-data) 2>&1
set -x

echo "===== BOOTSTRAP START ====="

apt update -y
apt install -y ca-certificates curl unzip software-properties-common git

# PHP repo
add-apt-repository ppa:ondrej/php -y
apt update -y
sudo apt upgrade -y

# Nginx + PHP
apt install -y nginx \
  php8.2 php8.2-fpm php8.2-cli php8.2-mysql \
  php8.2-xml php8.2-mbstring php8.2-curl \
  php8.2-zip php8.2-intl

systemctl enable nginx php8.2-fpm
systemctl start nginx php8.2-fpm

# SSM
sudo snap install amazon-ssm-agent --classic
sudo snap start amazon-ssm-agent


# AWS CLI
curl -s https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o /tmp/awscliv2.zip
unzip -q /tmp/awscliv2.zip -d /tmp
/tmp/aws/install

mkdir -p /var/www/app
chown -R www-data:www-data /var/www
echo "OK" > /var/www/app/health

echo "===== BOOTSTRAP END ====="
