
INSERT INTO department (id, name, description) VALUES ('1', 'Production', 'Department for producing goods'), ('2', 'Marketing', 'Department for marketing the produced goods'), ('3', 'R&D', 'Department for research and development'), ('4', 'HR', 'Department for Human Resource Management');

INSERT INTO designation (id, name) VALUES ('1', 'Engineer'), ('2', 'Sales Executive'), ('3', 'HR');

INSERT INTO user (id, first_name, last_name, email, phone_number, department_id, designation_id) VALUES 
('1', 'John', 'Carter', 'john@gmail.com', '9874556652', '4', '3'), ('2', 'Tony', 'Stark', 'tony@gmail.com', '8866554785', '2', '2'), ('3', 'Anudeep', 'Gosh', 'anudeep@gmail.com', '9987445625', '1', '1'), 
('4', 'Manoj', 'Nanjundaswamy', 'manoj@gmail.com', '8197950305', '3', '1');
	
UPDATE department SET dept_head_id = '3' where  name = 'Production';
UPDATE department SET dept_head_id = '2' where  name = 'Marketing';
UPDATE department SET dept_head_id = '4' where  name = 'R&D';
UPDATE department SET dept_head_id = '1' where  name = 'HR';