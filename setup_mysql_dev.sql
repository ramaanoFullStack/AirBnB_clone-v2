--Script sets up a new database for the project, creates a new user with all privileges on the database, and grants an additional SELECT privilege on another database.
--Creates a database called "hbnb_dev_db" if it doesn't already exist.
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
--Creates a user named "hbnb_dev" with the password "hbnb_dev_pwd" if it doesn't already exist.
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
--Grants all privileges on the "hbnb_dev_db" database to the "hbnb_dev" user.
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';
--Flushes the privileges to ensure that the changes take effect immediately.
FLUSH PRIVILEGES;
--Grants the SELECT privilege for the "hbnb_dev" user in the "performance_schema" database.
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
--Flushes the privileges again to ensure that the new privilege is applied.
FLUSH PRIVILEGES;
