

CREATE TABLE board_members_and_advisor_dtls (
	board_member_or_advisor_dtl_id int NOT NULL AUTO_INCREMENT,
	org_id int DEFAULT NULL,
	name varchar(100) DEFAULT NULL,
	role varchar(100) DEFAULT NULL,
	created_by int NOT NULL,
	created_date datetime DEFAULT CURRENT_TIMESTAMP,
	updated_by int DEFAULT NULL,
	updated_date datetime DEFAULT NULL,
	deleted_by int DEFAULT NULL,
	deleted_date datetime DEFAULT NULL,
	PRIMARY KEY (board_member_or_advisor_dtl_id),
	KEY org_id (org_id),
	FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

INSERT INTO board_members_and_advisor_dtls VALUES 
	(1,1,'David',NULL,1382,'2024-06-10 15:14:10'),
	(2,2,'Shivam',NULL,1382,'2024-06-10 15:14:10'),
	(3,3,'Denis',NULL,1382,'2024-06-10 15:14:10'),
	(4,4,'Danial',NULL,1382,'2024-06-10 15:14:10'),
	(5,5,'Josh',NULL,1382,'2024-06-10 15:14:10');


CREATE TABLE org_acquisitions (
	org_acquisition_id int NOT NULL AUTO_INCREMENT,
	org_id int DEFAULT NULL,
	acquired_org_name int DEFAULT NULL,
	announced_date date DEFAULT NULL,
	acquiring_amount int DEFAULT NULL,
	currency varchar(10) DEFAULT NULL,
	created_by int NOT NULL,
	created_date datetime DEFAULT CURRENT_TIMESTAMP,
	updated_by int DEFAULT NULL,
	updated_date datetime DEFAULT NULL,
	deleted_by int DEFAULT NULL,
	deleted_date datetime DEFAULT NULL,
	PRIMARY KEY (org_acquisition_id),
	KEY org_id (org_id),
	FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

INSERT INTO org_acquisitions VALUES 
	(1,1,NULL,NULL,NULL,'$',1382,'2024-06-10 15:08:41'),
	(2,2,NULL,NULL,NULL,'$',1382,'2024-06-10 15:09:12'),
	(3,3,NULL,NULL,NULL,'$',1382,'2024-06-10 15:09:12'),
	(4,4,NULL,NULL,NULL,'$',1382,'2024-06-10 15:09:12'),
	(5,5,NULL,NULL,NULL,'$',1382,'2024-06-10 15:09:12');


CREATE TABLE org_contact_details (
	contact_dtl_id int NOT NULL AUTO_INCREMENT,
	org_id int NOT NULL,
	contact_person_name varchar(100) DEFAULT NULL,
	designation varchar(100) DEFAULT NULL,
	contact_no varchar(12) DEFAULT NULL,
	email_id varchar(50) DEFAULT NULL,
	created_by int NOT NULL,
	created_date datetime DEFAULT CURRENT_TIMESTAMP,
	updated_by int DEFAULT NULL,
	updated_date datetime DEFAULT NULL,
	deleted_by int DEFAULT NULL,
	deleted_date datetime DEFAULT NULL,
	PRIMARY KEY (contact_dtl_id),
	KEY org_id (org_id),
	FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

INSERT INTO org_contact_details VALUES 
	(1,1,'Mark','Business analyst','1342536','mark@gmail.com',1382,'2024-06-10 14:41:28'),
	(2,2,'Wood','Projet manager','9687679835','wood@gmail.com',1382,'2024-06-10 14:43:18'),
	(3,3,'Dhanush','Business analyst','9682079039','dhanush@gmail.com',1382,'2024-06-10 14:46:16'),
	(4,4,'Rakesh','Project manager','8237261222','rakesh@gmail.com',1382,'2024-06-10 14:47:16'),
	(5,5,'rony','Senior analyst','8437483987','rony@gmail.com',1382,'2024-06-10 14:49:22');


CREATE TABLE org_fundings (
	org_funding_id int NOT NULL AUTO_INCREMENT,
	org_id int DEFAULT NULL,
	funding_date date DEFAULT NULL,
	funding_amount int DEFAULT NULL,
	funding_type varchar(50) DEFAULT NULL,
	currency varchar(10) DEFAULT NULL,
	created_by int NOT NULL,
	created_date datetime DEFAULT CURRENT_TIMESTAMP,
	updated_by int DEFAULT NULL,
	updated_date datetime DEFAULT NULL,
	deleted_by int DEFAULT NULL,
	deleted_date datetime DEFAULT NULL,
	PRIMARY KEY (org_funding_id),
	KEY org_id (org_id),
	FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

INSERT INTO org_fundings VALUES 
	(1,1,'2024-06-10',10000,'Small business','$',1382,'2024-06-10 14:55:49'),
	(2,2,'2024-06-10',20000,'Loans','$',1382,'2024-06-10 14:55:49'),
	(3,3,'2024-06-10',90000,'Small business','$',1382,'2024-06-10 14:55:49'),
	(4,4,'2024-06-10',12000,'Angel investors','$',1382,'2024-06-10 14:55:49'),
	(5,5,'2024-06-10',20000,'Business incubator','$',1382,'2024-06-10 14:55:49');


CREATE TABLE org_investments (
	investment_id int NOT NULL AUTO_INCREMENT,
	org_id int DEFAULT NULL,
	investment_date date DEFAULT NULL,
	invested_amount int DEFAULT NULL,
	currency varchar(10) DEFAULT NULL,
	created_by int NOT NULL,
	created_date datetime DEFAULT CURRENT_TIMESTAMP,
	updated_by int DEFAULT NULL,
	updated_date datetime DEFAULT NULL,
	deleted_by int DEFAULT NULL,
	deleted_date datetime DEFAULT NULL,
	PRIMARY KEY (investment_id),
	KEY org_id (org_id),
	FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

INSERT INTO org_investments VALUES 
	(1,1,'2024-05-10',100000,'$',1382,'2024-06-10 14:52:07'),
	(2,2,'2024-05-11',250000,'$',1382,'2024-06-10 14:53:13'),
	(3,3,'2024-05-12',170000,'$',1382,'2024-06-10 14:53:13'),
	(4,4,'2024-05-13',210000,'$',1382,'2024-06-10 14:53:13'),
	(5,5,'2024-05-14',300000,'$',1382,'2024-06-10 14:53:13');


CREATE TABLE organization_master (
	org_id int NOT NULL AUTO_INCREMENT,
	org_name varchar(100) DEFAULT NULL,
	about varchar(500) DEFAULT NULL,
	address varchar(100) DEFAULT NULL,
	org_type varchar(50) DEFAULT NULL,
	org_website varchar(100) DEFAULT NULL,
	company_ranking varchar(10) DEFAULT NULL,
	stock_symbol varchar(10) DEFAULT NULL,
	created_by int NOT NULL,
	created_date datetime DEFAULT CURRENT_TIMESTAMP,
	updated_by int DEFAULT NULL,
	updated_date datetime DEFAULT NULL,
	deleted_by int DEFAULT NULL,
	deleted_date datetime DEFAULT NULL,
	PRIMARY KEY (org_id)
);

INSERT INTO organization_master VALUES 
	(1,'Google','Google is an American search engine company, founded in 1998 by Sergey Brin and Larry Page.','Mountain View, California, United States','matrix organisation structure','www.google.com','3',NULL,1382,'2024-06-10 14:27:38'),
	(2,'Zensar','Zensar Technologies Limited is an Indian publicly traded software and services company.','Pune, India','IT','www.zensar.com','4254',NULL,1382,'2024-06-10 14:31:10'),
	(3,'Rnt','RNT provides high-quality app development services, ensuring client satisfaction and success.','Khardi, Pune, India','IT','www.rabbitandtortoise.com',NULL,NULL,1382,'2024-06-10 14:34:52'),
	(4,'wipro','Wipro Limited is a leading global information technology, consulting and business process services company.','Hinjewadi, Pune','Indian multinational corporation','www.wipro.com','4',NULL,1382,'2024-06-10 14:37:06'),
	(5,'infosys','Infosys is a global leader in next-generation digital services and consulting. We enable clients in more than 50 countries to navigate their digital transformation.','Hinjewadi, Pune','multinational information technology company','www.infosys.com','2',NULL,1382,'2024-06-10 14:40:06');


CREATE TABLE technology_dtls (
	technology_dtl_id int NOT NULL AUTO_INCREMENT,
	org_id int DEFAULT NULL,
	technology_name varchar(100) DEFAULT NULL,
	created_by int NOT NULL,
	created_date datetime DEFAULT CURRENT_TIMESTAMP,
	updated_by int DEFAULT NULL,
	updated_date datetime DEFAULT NULL,
	deleted_by int DEFAULT NULL,
	deleted_date datetime DEFAULT NULL,
	PRIMARY KEY (technology_dtl_id),
	KEY org_id (org_id),
	FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

INSERT INTO technology_dtls VALUES 
	(1,1,'HTML5',1382,'2024-06-10 15:17:23'),
	(2,2,'jQuery',1382,'2024-06-10 15:17:23'),
	(3,3,'Google Analytics',1382,'2024-06-10 15:17:23'),
	(4,4,'jQuery',1382,'2024-06-10 15:17:23'),
	(5,5,'HTML5',1382,'2024-06-10 15:17:23');


