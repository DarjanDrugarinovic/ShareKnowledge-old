CREATE DATABASE IF NOT EXISTS `share_knowledge` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `share_knowledge`;

DROP TABLE IF EXISTS post_tag;
DROP TABLE IF EXISTS email_tag;
DROP TABLE IF EXISTS file;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS email;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS tags;

CREATE TABLE user (
    id int(15) NOT NULL AUTO_INCREMENT,
    username varchar(25) NOT NULL,
    password varchar(1000) NOT NULL,
    role varchar(25) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (username)
) ENGINE = InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE tags (
    id int NOT NULL AUTO_INCREMENT,
    tag varchar(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (tag)
) ENGINE = InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE email (
    id int NOT NULL AUTO_INCREMENT,
    address varchar(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (address)
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE email_tag (
    id int NOT NULL AUTO_INCREMENT,
    emailId int NOT NULL,
    tagId int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (emailId) REFERENCES email(id), 
    FOREIGN KEY (tagId) REFERENCES tags(id)
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE post (
    id int NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    text varchar(1000) NOT NULL,
    type varchar(100) NOT NULL,
    likes int NOT NULL,
    date varchar(25) NOT NULL,
    userId int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (userId) REFERENCES user(id) 
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE file (
    id int NOT NULL AUTO_INCREMENT,
    path varchar(256) NOT NULL,
    ext varchar(256) NOT NULL,
    postId int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (postId) REFERENCES post(id) 
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE post_tag (
    id int NOT NULL AUTO_INCREMENT,
    postId int NOT NULL,
    tagId int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (postId) REFERENCES post(id), 
    FOREIGN KEY (tagId) REFERENCES tags(id)
) ENGINE = InnoDB DEFAULT CHARSET=utf8;



