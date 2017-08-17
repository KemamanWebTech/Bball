# create database bball;

use bball;

DROP TABLE IF EXISTS bball_user;

CREATE TABLE bball_user (
	bball_user_id int(11) NOT NULL AUTO_INCREMENT COMMENT 'unique ID, primary key',
	name varchar(64) NOT NULL COMMENT 'calling name of user',
	phone_no varchar(20) DEFAULT NULL COMMENT 'user phone number',
	password varchar(64) NOT NULL DEFAULT 'password' COMMENT 'User password',
	photo varchar(256) DEFAULT NULL COMMENT 'user photo',
    created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'creation date of the user',
	updated datetime DEFAULT NULL COMMENT 'last update to the user',
	PRIMARY KEY (bball_user_id)
);

DROP TABLE IF EXISTS court;

CREATE TABLE court (
	court_id int(11) NOT NULL AUTO_INCREMENT COMMENT 'unique ID, primary key',
	name varchar(256) NOT NULL COMMENT 'name of the court',
    address varchar(256) NOT NULL COMMENT 'address of the court',
    location varchar(64) DEFAULT NULL COMMENT 'gps location of the court',
    manager_name varchar(64) DEFAULT NULL COMMENT 'name of the manager of the court',
	manager_phone_no varchar(20) DEFAULT NULL COMMENT 'phone no of the manager of the court',
    rate varchar(256) DEFAULT NULL COMMENT 'description on the rate of the court',
	avail varchar(256) DEFAULT NULL COMMENT 'description on the availability of the court',
	photo varchar(256) DEFAULT NULL COMMENT 'photo of the court',
    added_by int(11) DEFAULT NULL COMMENT 'who added this court to system',
    owner_id int(11) DEFAULT NULL COMMENT 'id of the owner of the court',
	created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'entry date of this court',
	updated datetime DEFAULT NULL COMMENT 'last update to the court info',
	PRIMARY KEY (court_id)
);

DROP TABLE IF EXISTS bball_session;

CREATE TABLE bball_session (
	session_id int(11) NOT NULL AUTO_INCREMENT COMMENT 'unique ID, primary key',
	name varchar(256) NOT NULL COMMENT 'name of the session',
    court_id int(11) NOT NULL COMMENT 'court where the session takes place',
    number int(4) NOT NULL COMMENT 'approx no of ballers needed',
	added_by int(11) DEFAULT NULL COMMENT 'who added this session to system',
	admin_list varchar(256) DEFAULT NULL COMMENT 'list of user IDs who can make changes to the session',
    baller_list varchar(256) DEFAULT NULL COMMENT 'list of user IDs of the ballers registered to the session',
    rate int(4) NOT NULL DEFAULT 0 COMMENT 'how much baller have to pay each in RM',
    session_time datetime DEFAULT NULL COMMENT 'date & time of this session',
	photo varchar(256) DEFAULT NULL COMMENT 'photo of the court',
	created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'creation date of this session',
	updated datetime DEFAULT NULL COMMENT 'last update to this session',
	PRIMARY KEY (session_id)
);