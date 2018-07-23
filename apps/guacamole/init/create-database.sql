CREATE DATABASE guacamole_db;
CREATE USER 'guacamole_user'@'%' IDENTIFIED BY 'guacamole_password';
GRANT ALL PRIVILEGES ON guacamole_db.* To 'guacamole_user'@'%';
USE guacamole_db;
