create DATABASE ABC;

USE ABC;
create TABLE USER(
User_ID int auto_increment primary key COMMENT 'User_Id is definied as atuo_increment and User_Id is the primary key',
FirstName VARCHAR(8) NOT NULL COMMENT 'store user first name',
LastName VARCHAR (8) NOT NULL COMMENT 'store user last name',
Telephone VARCHAR (10) NOT NULL COMMENT 'store user telephone number',
Email VARCHAR (25) UNIQUE COMMENT 'store user email',
Company VARCHAR (10) NOT NULL COMMENT 'store user company name',
Address VARCHAR (25) NOT NULL COMMENT 'store user address',
Country VARCHAR (10) NOT NULL COMMENT 'store user country',
admin_id int NOT NULL COMMENT 'Store admin id',
FOREIGN KEY (admin_Id) REFERENCES admin(admin_Id) 
);

use abc;
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('Win', 'Margret', '0794978934', 'mee13@gmail.com', 'David SF', 'Villya street, India', 'india');
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('John', 'Simpton', '0914907199', 'john@gmail.com', 'WFS', 'Yuhan, Yuna, Tokyo', 'Japan');
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('Marie', 'Hatheway', '0908905622', 'HathM@gmail.com', 'David', 'No 1A, singappore', 'Singapore');
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('Bill', 'Watson', '0604989079', '4Bill@gmail.com', 'microsoft', 'AC/woodstreet, China', 'China');
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('Joe', 'Anneh', '0624912367', 'JAnneh@gmail.com', 'google', 'Math B, London', 'London');

SELECT * FROM USER;


-- jobs--
USE ABC;

create TABLE Jobs
(
Job_Id  int auto_increment primary key COMMENT 'Job_Id is definied as atuo_increment and Job_Id is the primary key' ,
Job_Title  VARCHAR (10) NOT NULL COMMENT 'store user job title',
Company VARCHAR (10) NOT NULL COMMENT 'store user company',
Country VARCHAR (10) NOT NULL COMMENT 'store user country',
Applicant varchar (8) NOT NULL COMMENT 'store user applicant',
Company_conatct  VARCHAR (10) NOT NULL COMMENT 'store user company contact number'
);


USE ABC;

INSERT INTO Jobs (Job_Title, company, Country, Applicant, Company_contact)
VALUES ('programmer', 'google', 'Japan', 'Meahya', '0903456782');
INSERT INTO Jobs (Job_Title, company, Country, Applicant, Company_contact)
VALUES ('Manager', 'Virtusa', 'London', 'Joe', '0608765656');
INSERT INTO Jobs (Job_Title, company, Country, Applicant, Company_contact)
VALUES ('SEngineer','samsung', 'Singapore', 'HYug', '0623458909');
INSERT INTO Jobs (Job_Title, company, Country, Applicant, Company_contact)
VALUES ('Designer','hp', 'Myanmar', 'Wooyu', '0912312155');
INSERT INTO Jobs (Job_Title, company, Country, Applicant, Company_contact)
VALUES ('IT manager','google', 'Thailand', 'Jin', '0907894013');
SELECT * FROM Jobs;


USE ABC;
drop table jobs;

USE ABC;

CREATE TABLE Messages(
Message_Id  int auto_increment primary key NOT NULL COMMENT 'Message_Id is definied as atuo_increment and message_Id is the primary key' ,
Message_title  VARCHAR(30) NOT NULL COMMENT 'store message message title',
sender_name  VARCHAR (10) NOT NULL COMMENT 'store sender name',
sent_date DATE NOT NULL COMMENT 'store message sent time',
sent_time TIME NOT NULL COMMENT 'store message sent date',
Receiver_name  VARCHAR (10) NOT NULL COMMENT 'store message receiver name',
user_id int NOT NULL COMMENT 'Store user id',
FOREIGN KEY (user_Id) REFERENCES user(user_Id) 
);

USE ABC;
INSERT INTO Messages (User_Id, Message_title, sender_name, sent_time, sent_date, Receiver_name)
VALUES ('2', 'Hello', 'Dhew', '8:00', '2021/11/26', 'Bill');
INSERT INTO Messages (User_Id, Message_title, sender_name, sent_time, sent_date, Receiver_name)
VALUES ('3', 'Request', 'Kai', '8:37', '2021/11/27', 'Cyan');
INSERT INTO Messages (User_Id, Message_title, sender_name, sent_time, sent_date, Receiver_name)
VALUES ('4', 'Apologize', 'Rose', '6:25', '2021/11/30', 'David');
INSERT INTO Messages (User_Id, Message_title, sender_name, sent_time, sent_date, Receiver_name)
VALUES ('5', 'Hello', 'Aali', '10:08', '2021/12/2', 'Holmes');
INSERT INTO Messages (User_Id, Message_title, sender_name, sent_time, sent_date, Receiver_name)
VALUES ('6', 'Comments', 'Pitt', '3:45', '2021/12/12', 'Watson');
SELECT * FROM Messages;

USE ABC;

CREATE TABLE Threads
(
Thread_Id  int auto_increment primary key NOT NULL COMMENT 'thread_Id is definied as atuo_increment and thread_Id is the primary key' ,
Receiver_name  VARCHAR (10) NOT NULL COMMENT 'store thread receiver name',
posted_date DATE NOT NULL COMMENT 'store thread posted time',
posted_time TIME NOT NULL COMMENT 'store thread posted date',
user_id int NOT NULL COMMENT 'Store user id',
FOREIGN KEY (user_Id) REFERENCES user(user_Id) 
);

USE ABC;
INSERT INTO Threads (User_Id, Receiver_name, posted_date, posed_time)
VALUES ('2','Srida', '2021/11/26', '2:30');
INSERT INTO Threads (User_Id, Receiver_name, posted_date, posed_time)
VALUES ('3','Linda', '2021/12/04', '11:49');
INSERT INTO Threads (User_Id, Receiver_name, posted_date, posed_time)
VALUES ('4','Milli', '2021/12/10', '20:10');
INSERT INTO Threads (User_Id, Receiver_name, posted_date, posed_time)
VALUES ('5','Lisa', '2021/12/18', '8:16');
INSERT INTO Threads (User_Id, Receiver_name, posted_date, posed_time)
VALUES ('6','Jisoo', '2021/12/22', '5:25');
SELECT * FROM Threads;



USE ABC;

CREATE TABLE Bulk_email
(
Email_Id  int auto_increment primary key NOT NULL COMMENT 'email_Id is definied as atuo_increment and email_Id is the primary key' ,
Receiver_name  VARCHAR (10) NOT NULL COMMENT 'store email receiver name',
send_date DATE NOT NULL COMMENT 'store email posted time',
send_time TIME NOT NULL COMMENT 'store email posted date',
Admin_Id int NOT NULL COMMENT 'Store admin id',
FOREIGN KEY (Admin_Id) REFERENCES Admin(Admin_Id) 
);

USE ABC;
INSERT INTO Bulk_email (Admin_Id, Receiver_name, send_date, send_time)
VALUES ('1','Srida', '2021/11/16', '2:30');
INSERT INTO Bulk_email (Admin_Id, Receiver_name, send_date, send_time)
VALUES ('2','Sam', '2021/11/28', '4:10');
INSERT INTO Bulk_email (Admin_Id, Receiver_name, send_date, send_time)
VALUES ('3','Dunwill', '2021/12/02', '12:30');
INSERT INTO Bulk_email (Admin_Id, Receiver_name, send_date, send_time)
VALUES ('4','Mariee', '2021/12/18', '5:45');
INSERT INTO Bulk_email (Admin_Id, Receiver_name, send_date, send_time)
VALUES ('5','Jay', '2021/12/26', '22:50');
SELECT * FROM Bulk_email;


USE ABC;

CREATE TABLE Admin
(
Admin_Id  int auto_increment primary key NOT NULL COMMENT 'Admin_Id is definied as atuo_increment and Admmin_Id is the primary key' ,
First_name  VARCHAR (10) NOT NULL COMMENT 'store admin first name',
Telephone VARCHAR (10) NOT NULL COMMENT 'store admin telephone number',
Email VARCHAR (25) UNIQUE COMMENT 'store admin email',
Company VARCHAR (10) NOT NULL COMMENT 'store admin company name',
Address VARCHAR (25) NOT NULL COMMENT 'store admin address',
Country VARCHAR (10) NOT NULL COMMENT 'store admin country'
);

use abc;
INSERT INTO Admin (FirstName, Telephone, Email, Company, Address, Country)
VALUES ('Sin', '079465674', 'see3@gmail.com', 'Olivia', 'Sindya street, India', 'india');
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('Bony', '0225465699', 'bonbon@gmail.com', 'Samsung', 'NoW12, Keels road', 'Malaysia');
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('Kookie', '091234562', 'kokj@gmail.com', 'Virtusa', 'No 2/AD, HH road', 'London');
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('Suga', '060987379', 'swagsuga@gmail.com', 'microsoft', 'MC James, Uni Park road', 'Africa');
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('Jimin', '062467897', 'jiminee@gmail.com', 'google', 'Jeels street, Luvida', 'Canada');

SELECT * FROM USER;


USE ABC;

CREATE TABLE account
(
Email VARCHAR (25) UNIQUE COMMENT 'store email',
password VARCHAR (10) NOT NULL COMMENT 'store password',
user_id int NOT NULL COMMENT 'Store user id',
FOREIGN KEY (user_Id) REFERENCES user(user_Id) 
);

use abc;
INSERT INTO account (Email, password, user_id)
VALUES ('waing@email.com', 'ww123', '1');
INSERT INTO account (Email, password, user_id)
VALUES ('yuhaog@email.com', 'ee345', '2');
INSERT INTO account (Email, password, user_id)
VALUES ('tanig@email.com', 'bnm78', '3');
INSERT INTO account (Email, password, user_id)
VALUES ('richig@email.com', '908iop', '4');
INSERT INTO account (Email, password, user_id)
VALUES ('farhig@email.com', 'ss56', '5');
SELECT * FROM account;

USE ABC;

CREATE TABLE apply
(
job_id  int NOT NULL COMMENT 'Store job id',
FOREIGN KEY (job_Id) REFERENCES jobs(job_Id), 
user_Id int NOT NULL COMMENT 'Store user id',
FOREIGN KEY (user_Id) REFERENCES user(user_Id),
 PRIMARY KEY (`user_id`,`Job_id`)
);


use abc;
INSERT INTO apply (job_id, user_id)
VALUES ('1', '1');
INSERT INTO apply (job_id, user_id)
VALUES ('2', '2');
INSERT INTO apply (job_id, user_id)
VALUES ('3', '6');
INSERT INTO apply (job_id, user_id)
VALUES ('4', '4');
INSERT INTO apply (job_id, user_id)
VALUES ('5', '5');
SELECT * FROM apply;

-- update data --
UPDATE User
SET company = 'Samsung', Country = 'India'
WHERE User_ID = 1;


SELECT User_ID, FirstName, LastName, Telephone, Email, Company, Address, Country FROM USER WHERE country='China';

SELECT User_ID, FirstName, LastName, Telephone, Email, Company, Address, Country FROM USER ORDER BY country ASC;

-- group by --
SELECT COUNT(User_ID), Country
FROM user
GROUP BY Country;


-- sp --
USE ABC;
DELIMITER //
CREATE PROCEDURE sp_select_User(in FirstName varchar(8))
BEGIN
	SELECT company, email FROM User WHERE FirstName=FirstName;
END //    

CALL sp_select_User('Win');



-- inserting null value--
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('Win', null, '0794978934', 'mee13@gmail.com', 'David SF', 'Villya street, India', 'india');


-- inserting duplicate value--
use ABC;
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('Win', 'tae', '0794978934', 'mee13@gmail.com', 'David SF', 'Villya street, India', 'india');
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('Koo', 'jim', '0908768934', 'mee13@gmail.com', 'Virtusa', 'johnplus road, London', 'Thailand');

-- inserting duplicate value to PK--
use ABC;
INSERT INTO User (User_id, FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('1', 'Win', 'tae', '0794978934', 'mee13@gmail.com', 'David SF', 'Villya street, India', 'india');
INSERT INTO User (User_id, FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('1', 'Koo', 'jim', '0908768934', 'mee13@gmail.com', 'Virtusa', 'johnplus road, London', 'Thailand');

-- inserting large values--
use ABC;
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('Koo', 'jim', '090876893434566', 'mee13@gmail.com', 'Virtusa', 'johnplus road, London', 'Thailand');

-- inserting different data type --
use ABC;
INSERT INTO Messages (User_Id, Sender_Id, sender_name, sent_time, sent_date, Receiver_Id, Receiver_name)
VALUES ('2', 'james', 'Dhew', '8:00', '2021/11/26', '1', 'Bill');


use ABC;
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('hobi', 'leeha', '0508778934', 'wung@gmail.com', 'hp', 'Vjay2 road, china', 'china');
select from * User;

-- update table --
use ABC;
UPDATE User
SET company = 'samsung', Country = 'Thailand'
WHERE User_Id = 1;

-- delete data --
use ABC;
DELETE FROM User WHERE Company='David SF';
select from * User;


-- create new user --
CREATE USER 'Application'@'localhost' IDENTIFIED BY '123';
-- provide specific privileges --
GRANT Create, Read, Update, Delete, Execute ON abc.* TO 'Application'@'localhost';


-- create new user --
CREATE USER 'Database Designers'@'localhost' IDENTIFIED BY '456';
-- provide all privileges --
GRANT ALL PRIVILEGES ON abc.* TO 'Database Designers'@'localhost';

-- group by --
use abc;
SELECT COUNT(User_ID), Country
FROM user
GROUP BY Country having country='Thailand';

use abc;
SELECT COUNT(User_ID), company
FROM user
GROUP BY company ;


use abc;
SELECT COUNT(User_ID), Job_title
FROM Jobs
GROUP BY Job_title having Job_title='manager';


use ABC;
INSERT INTO User (FirstName, LastName, Telephone, Email, Company, Address, Country)
VALUES ('min', 'joyda', '089567832', 'doo@gmail.com', 'google', 'No2A road, India', 'India');
select from * User;


-- inner join --
use abc;
SELECT admin.country, User.firstName
FROM admin
INNER JOIN User ON admin.admin_Id = User.admin_Id;

-- left join--
use abc;
SELECT admin.country, User.firstName
FROM admin
LEFT JOIN User ON admin.admin_Id = User.admin_Id;

