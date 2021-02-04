#!/bin/bash

sudo yum install centos-release-scl -y

sudo yum list rh-php7[0-9].x86_64

sudo yum install rh-php70  rh-php70-php-fpm -y
sudo yum install rh-php70 rh-php70-php-fpm rh-php70-php-cli rh-php70-php-common rh-php70-php-gd rh-php70-php-intl rh-php70-php-mbstring rh-php70-php-mcrypt rh-php70-php-mysqlnd rh-php70-php-pdo rh-php70-php-process rh-php70-php-xml -y

sudo yum install rh-php71  rh-php71-php-fpm -y
sudo yum install rh-php71 rh-php71-php-fpm rh-php71-php-cli rh-php71-php-common rh-php71-php-gd rh-php71-php-intl rh-php71-php-mbstring rh-php71-php-mcrypt rh-php71-php-mysqlnd rh-php71-php-pdo rh-php71-php-process rh-php71-php-xml -y

sudo yum install rh-php72  rh-php72-php-fpm -y
sudo yum install rh-php72 rh-php72-php-fpm rh-php72-php-cli rh-php72-php-common rh-php72-php-gd rh-php72-php-intl rh-php72-php-mbstring rh-php72-php-mcrypt rh-php72-php-mysqlnd rh-php72-php-pdo rh-php72-php-process rh-php72-php-xml -y

sudo yum install rh-php73  rh-php73-php-fpm -y
sudo yum install rh-php73 rh-php73-php-fpm rh-php73-php-cli rh-php73-php-common rh-php73-php-gd rh-php73-php-intl rh-php73-php-mbstring rh-php73-php-mcrypt rh-php73-php-mysqlnd rh-php73-php-pdo rh-php73-php-process rh-php73-php-xml -y

sudo scl enable rh-php70 bash
sudo scl enable rh-php71 bash
sudo scl enable rh-php72 bash
sudo scl enable rh-php73 bash

sudo sed -i 's/:9000/:9000/'  /etc/opt/rh/rh-php70/php-fpm.d/www.conf
sudo sed -i 's/:9000/:9001/'  /etc/opt/rh/rh-php71/php-fpm.d/www.conf
sudo sed -i 's/:9000/:9002/'  /etc/opt/rh/rh-php72/php-fpm.d/www.conf
sudo sed -i 's/:9000/:9003/'  /etc/opt/rh/rh-php72/php-fpm.d/www.conf


sudo semanage port -a -t http_port_t -p tcp 9000
sudo semanage port -a -t http_port_t -p tcp 9001
sudo semanage port -a -t http_port_t -p tcp 9002
sudo semanage port -a -t http_port_t -p tcp 9003




sudo systemctl start rh-php70-php-fpm
sudo systemctl enable rh-php70-php-fpm
sudo systemctl status rh-php70-php-fpm


sudo systemctl start rh-php71-php-fpm
sudo systemctl enable rh-php71-php-fpm
sudo systemctl status rh-php71-php-fpm

sudo systemctl start rh-php72-php-fpm
sudo systemctl enable rh-php71-php-fpm
sudo systemctl status rh-php71-php-fpm
