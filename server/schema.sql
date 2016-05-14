CREATE DATABASE chat;

USE chat;

CREATE TABLE username (
  id INT NOT NULL PRIMARY KEY,
  name TEXT(20)
);

CREATE TABLE lobby (
  id INT NOT NULL PRIMARY KEY,
  name TEXT(50)
);
  /* Describe your table here.*/
CREATE TABLE messages (
  id INT NOT NULL PRIMARY KEY,
  username_id INT,
  lobby_id INT,
  message TEXT (255),

 FOREIGN KEY (username_id)
    REFERENCES username(id),

  FOREIGN KEY (lobby_id)
    REFERENCES lobby(id)
  
) ENGINE=INNODB;


/* Create other tables and define schemas for them here! */



/*  Execute this file from the command line by typing:
 *    mysql -u root -p < server/schema.sql
 *  to create the database and the tables.*/

