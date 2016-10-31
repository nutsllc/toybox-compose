# Toybox Compose

This repository contains several ``docker-compose.yml`` for Docker container.

## Requirements

* Docker 1.10.0 above
* docker-compose 1.6.0 above

## Usage

Clone this repository.

```bash
git clone https://github.com/nutsllc/toybox-compose.git
```

Then change directory that you would'd like to run it and exec ``docker-compose up``

## docker-compose.yml



### apache2

>The Apache HTTP Server, colloquially called Apache, is the world's most used web server software. 

URL: ``http://hostname:8080``

|Components|Image|
|:---|:---|
|Apache 2.4.23|[nutsllc/toybox-apache](https://hub.docker.com/r/nutsllc/toybox-apache2/)|



### lamp-apache-php5.6

>LAMP is an archetypal model of web service solution stacks, named as an acronym of the names of its original four open-source components: the Linux operating system, the Apache HTTP Server, the MySQL relational database management system (RDBMS), and the PHP programming language.

URL: ``http://hostname:8080``

|Components|Image|
|:---|:---|
|Apache 2.4.10<br>PHP 5.6.23|[nutsllc/toybox-php:5.6-apache](https://hub.docker.com/r/nutsllc/toybox-php/)|
|MariaDB 10.1.14|[nutsllc/toybox-mariadb](https://hub.docker.com/r/nutsllc/toybox-mariadb/)|

### lamp-apache-php7.0: 

>LAMP is an archetypal model of web service solution stacks, named as an acronym of the names of its original four open-source components: the Linux operating system, the Apache HTTP Server, the MySQL relational database management system (RDBMS), and the PHP programming language.


URL: ``http://hostname:8080``

|Components|Image|
|:---|:---|
|Apache 2.4.10<br>PHP 7.0.8|[nutsllc/toybox-php:7.0-apache](https://hub.docker.com/r/nutsllc/toybox-php/)|
|MariaDB 10.1.14|[nutsllc/toybox-mariadb](https://hub.docker.com/r/nutsllc/toybox-mariadb/)| 

### lamp-nginx-php5.6-fpm: 

>LAMP is an archetypal model of web service solution stacks, named as an acronym of the names of its original four open-source components: the Linux operating system, the Apache HTTP Server, the MySQL relational database management system (RDBMS), and the PHP programming language.

URL: ``http://hostname:8080``

|Components|Image|
|:---|:---|
|Nginx 1.11.5|[nutsllc/toybox-nginx](https://hub.docker.com/r/nutsllc/toybox-nginx/)|
|PHP-FPM 5.6.23|[nutsllc/toybox-php:5.6-fpm](https://hub.docker.com/r/nutsllc/toybox-php/)|
|MariaDB 10.1.14|[nutsllc/toybox-mariadb](https://hub.docker.com/r/nutsllc/toybox-mariadb/)| 

### lamp-nginx-php7.0-fpm

>LAMP is an archetypal model of web service solution stacks, named as an acronym of the names of its original four open-source components: the Linux operating system, the Apache HTTP Server, the MySQL relational database management system (RDBMS), and the PHP programming language.

URL: ``http://hostname:8080``

|Components|Image|
|:---|:---|
|Nginx 1.11.5|[nutsllc/toybox-nginx](https://hub.docker.com/r/nutsllc/toybox-nginx/)|
|PHP-FPM 7.0.8|[nutsllc/toybox-php:7.0-fpm](https://hub.docker.com/r/nutsllc/toybox-php/)|
|MariaDB 10.1.14|[nutsllc/toybox-mariadb](https://hub.docker.com/r/nutsllc/toybox-mariadb/)| 

### laravel5.1

>Laravel is a free, open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model–view–controller (MVC) architectural pattern. 

URL: ``http://hostname:8080``

|Components|Image|
|:---|:---|
|Nginx 1.11.5|[nutsllc/toybox-nginx](https://hub.docker.com/r/nutsllc/toybox-nginx/)|
|PHP-FPM 7.0.8|[nutsllc/toybox-php:7.0-fpm](https://hub.docker.com/r/nutsllc/toybox-php/)|
|MariaDB 10.1.14|[nutsllc/toybox-mariadb](https://hub.docker.com/r/nutsllc/toybox-mariadb/)| 
|Laravel 5.1.x|[nutsllc/toybox-laravel-data:5.1](https://hub.docker.com/r/nutsllc/toybox-laravel-data/)|

### laravel5.2

>Laravel is a free, open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model–view–controller (MVC) architectural pattern. 

URL: ``http://hostname:8080``

|Components|Image|
|:---|:---|
|Nginx 1.11.5|[nutsllc/toybox-nginx](https://hub.docker.com/r/nutsllc/toybox-nginx/)|
|PHP-FPM 7.0.8|[nutsllc/toybox-php:7.0-fpm](https://hub.docker.com/r/nutsllc/toybox-php/)|
|MariaDB 10.1.14|[nutsllc/toybox-mariadb](https://hub.docker.com/r/nutsllc/toybox-mariadb/)| 
|Laravel 5.2.x|[nutsllc/toybox-laravel-data:5.1](https://hub.docker.com/r/nutsllc/toybox-laravel-data/)|

### laravel5.3

>Laravel is a free, open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model–view–controller (MVC) architectural pattern. 

URL: ``http://hostname:8080``

|Components|Image|
|:---|:---|
|Nginx 1.11.5|[nutsllc/toybox-nginx](https://hub.docker.com/r/nutsllc/toybox-nginx/)|
|PHP-FPM 7.0.8|[nutsllc/toybox-php:7.0-fpm](https://hub.docker.com/r/nutsllc/toybox-php/)|
|MariaDB 10.1.14|[nutsllc/toybox-mariadb](https://hub.docker.com/r/nutsllc/toybox-mariadb/)| 
|Laravel 5.3.x|[nutsllc/toybox-laravel-data:5.3](https://hub.docker.com/r/nutsllc/toybox-laravel-data/)|

### lychee

>Lychee is a free photo-management tool, which runs on your server or web-space. Installing is a matter of seconds. Upload, manage and share photos like from a native application. Lychee comes with everything you need and all your photos are stored securely.

URL: ``http://hostname:8080``  
Username: toybox  
Password: toybox

|Components|Image|
|:---|:---|
|Apache 2.4.10<br>PHP 7.0.7<br>Lychee 3.1|[nutsllc/toybox-lychee](https://hub.docker.com/r/nutsllc/toybox-lychee/)|
|MariaDB 10.1.14|[nutsllc/toybox-mariadb](https://hub.docker.com/r/nutsllc/toybox-mariadb/)| 

### nginx

>Nginx (pronounced "engine x") is software to provide a web server. 

URL: ``http://hostname:8080``

|Components|Image|
|:---|:---|
|Nginx 1.11.5|[nutsllc/toybox-nginx](https://hub.docker.com/r/nutsllc/toybox-nginx/)|

### vnc-centos-gnome

>In computing, Virtual Network Computing (VNC) is a graphical desktop sharing system that uses the Remote Frame Buffer protocol (RFB) to remotely control another computer.

>GNOME is a desktop environment that is composed entirely of free and open-source software.

URL: ``vnc://hostname:5900`` for admin  
URL: ``vnc://hostname:5901`` for general user

|Components|Image|
|:---|:---|
|CentOS 6<br>GNOME Desktop<br>TigerVNC|[nutsllc/vnc-centos-gnome](https://hub.docker.com/r/nutsllc/vnc-centos-gnome/)|

### vnc-centos-gnome-jp

>In computing, Virtual Network Computing (VNC) is a graphical desktop sharing system that uses the Remote Frame Buffer protocol (RFB) to remotely control another computer.

>GNOME is a desktop environment that is composed entirely of free and open-source software.

for admin connection:

URL: ``vnc://hostname:5900`` 
PASSWORD: centos

for general user connection:

URL: ``vnc://hostname:5901`` for general user
PASSWORD: password

|Components|Image|
|:---|:---|
|CentOS 6<br>GNOME Desktop<br>TigerVNC<br>Japanese FEP(Anthy)|[nutsllc/vnc-centos-gnome](https://hub.docker.com/r/nutsllc/vnc-centos-gnome/)|