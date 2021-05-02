CREATE TABLE department(
	id int(11) NOT NULL AUTO_INCREMENT,
	name varchar(50) DEFAULT NULL,
	description varchar(100) DEFAULT NULL,
	dept_head_id int(11) DEFAULT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE designation(
	id int(11) NOT NULL AUTO_INCREMENT,
	name varchar(50) DEFAULT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE user(
	id int(11) NOT NULL AUTO_INCREMENT,
	first_name varchar(50) DEFAULT NULL,
	last_name varchar(50) DEFAULT NULL,
	email varchar(50) DEFAULT NULL,
	phone_number varchar(50) DEFAULT NULL,
	department_id int(11) DEFAULT NULL,
	designation_id int(11) DEFAULT NULL,
	PRIMARY KEY (id),
	CONSTRAINT FK_DEPARTMENT FOREIGN KEY (department_id) 
	REFERENCES department (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT FK_DESIGNATION FOREIGN KEY (designation_id)
	REFERENCES designation (id)  ON DELETE NO ACTION ON UPDATE NO ACTION
);

ALTER TABLE DEPARTMENT add CONSTRAINT FK_DEPT_HEAD FOREIGN KEY (dept_head_id) references user(id);
