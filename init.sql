CREATE DATABASE main_db;
CREATE DATABASE simples_web_john_db;
CREATE DATABASE simples_web_vini_db;
CREATE DATABASE simples_web_laiz_db;
CREATE DATABASE simples_web_carlos_db;
CREATE DATABASE simples_web_nicolas_db;

CREATE USER 'john'@'%' IDENTIFIED BY 'senha_john';
CREATE USER 'vini'@'%' IDENTIFIED BY 'senha_vini';
CREATE USER 'laiz'@'%' IDENTIFIED BY 'senha_laiz';
CREATE USER 'carlos'@'%' IDENTIFIED BY 'senha_carlos';
CREATE USER 'nicolas'@'%' IDENTIFIED BY 'senha_nicolas';

GRANT ALL PRIVILEGES ON simples_web_john_db.* TO 'john'@'%';
GRANT ALL PRIVILEGES ON simples_web_vini_db.* TO 'vini'@'%';
GRANT ALL PRIVILEGES ON simples_web_laiz_db.* TO 'laiz'@'%';
GRANT ALL PRIVILEGES ON simples_web_carlos_db.* TO 'carlos'@'%';
GRANT ALL PRIVILEGES ON simples_web_nicolas_db.* TO 'nicolas'@'%';

FLUSH PRIVILEGES;
