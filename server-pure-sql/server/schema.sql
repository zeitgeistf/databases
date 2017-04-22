CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  ID int NOT NULL AUTO_INCREMENT,
  message VARCHAR(120),
  roomname VARCHAR(120),
  PRIMARY KEY (ID)
);

/* Create other tables and define schemas for them here! */
CREATE TABLE users (

  ID int NOT NULL AUTO_INCREMENT,
  username VARCHAR(120),
  PRIMARY KEY (ID)
);

INSERT INTO messages (message, roomname) VALUES ('how are you', 'lobby');
INSERT INTO users (username) VALUES ('Shawn');

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

