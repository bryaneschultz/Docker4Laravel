CREATE USER 'pmauser'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'pmapass';
GRANT ALL ON `phpmyadmin`.* TO 'pmauser'@'localhost';

CREATE USER 'pmauser'@'%' IDENTIFIED WITH caching_sha2_password BY 'pmapass';
GRANT ALL ON `phpmyadmin`.* TO 'pmauser'@'%';

CREATE USER 'appuser'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
GRANT ALL ON `app`.* TO 'appuser'@'localhost';

CREATE USER 'appuser'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
GRANT ALL ON `app`.* TO 'appuser'@'%';
