# React-PHP
SETUP FROM SCRATCH
==================
Install IDE
-----------
1) Install visual code ide
2) Add plugins
PHP intellicense
PHP Debug
SQL tools
ES7/React

Install XAMPP
-------------
1) Install xampp
2) Start mysql/mariadb , apache from control panel
3) Restart Xampp 
/opt/lampp/lampp restart

Initial Setup
------------
1)Create folder /home/iarv/Documents/ReactPhp (on EXT3/4 folder Not NTFS)

Setup react client
------------------
1) mkdir Client and cd Client
2) install npm
3) npx create-react-app <name>
4) npm i bootstrap react-bootstrap
5) npm i axios 
6) chown -r root:root ../Client
6) to start/stop react web server 
`npm start
npx kill-port 3000` 

Setup PHP server
----------------
1) cd ../ReactPhp dolder <ext3/4 folder not NTFS>
2) mkdir Server , cd Server
3) create index.php file and implement it
4) create file .htaccess with the following contents to avoid CORS
Header set Access-Control-Allow-Origin "*"
Header set Access-Control-Allow-Headers: "X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method"
Header set Access-Control-Allow-Methods: "GET, POST, OPTIONS, PUT, DELETE"
5) Create symbolic server link to /opt/lampp/htdocs
ln -sf /home/iarv/Documents/ReactPhp/Server /opt/lampp/htdocs/myPhpProj

Add Chrome extension
--------------------
Add extension to CHROME browser MOESIF origin to avoid cors

MariaDB
-------
A) DB Creation/Administration remotely
1) install hediaSLQ app to windows VM 
2) create user and add previledges for remote Access
CREATE USER 'iarv'@localhost IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON 'mydb'.* TO 'iarv'@localhost;
3) Connect to db
4) create db Create database <name>
5) xreate tables and insert data
6) create sql installation script

B) Local Administration
1) /opt/lampp/bin/mariadb -u root
2) create database mydb;
3) show databases;
3) use mydb;
5) show tables;
6) create table <name>
7) insert data


CLONE PROJECT
============= 
git clone
---------  
1) cd /home/iarv/Documents 
2) git clone https://iarv69:j_arvan1t1s@github.com/iarv69/ReactPhp
3) Execute Sql creation script  
/opt/lampp/bin/mariadb -u root
>source /home/iarv/Document/ReactPhp/Server/DB/mydb4.sql
4) Create symbolic server link to /opt/lampp/htdocs
ln -sf /home/iarv/Documents/ReactPhp/Server /opt/lampp/htdocs/myPhpProj
5) start Mariadb and apache (XAMPP should be installed)
`/opt/lampp/lampp restart `
6) Download node modules
`npm i bootstrap react-bootstrap axios`
7) start/stop react client
`cd /home/iarv/Documents/ReactPhp/Client
npm start
npx kill-port 3000`






