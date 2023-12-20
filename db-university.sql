reate database `db_university_schema`;
use db_university_schema;

	create table `departments`(
	id int auto_increment,
	name varchar(100) not null,
	address varchar(255) not null,
	phone int not null,
	email varchar (150) not null,
	website varchar (150) not null,
	head_of_department varchar (255) not null,
	primary key(id)
);

	create table `degrees`(
	id int auto_increment,
	name varchar(100) not null,
	level varchar(100) not null,
	address varchar(100) not null,
	email varchar (150) not null,
	website varchar (100) not null,
	department_id int,
	primary key(id),
	foreign key (department_id) references departments(id)
);

	create table `students`(
	id int auto_increment,
	name varchar(100) not null,
	surname varchar(100) not null,
	date_of_birth date not null,
	fiscal_code varchar(30) not null,
	enrolment_date date not null,
	registration_number int not null,
	email varchar(150) not null,
	degree_id int,
	primary key(id),
	foreign key (degree_id) references degrees(id)
);

insert into `departments` (`name`, `address`, `phone`, `email`, `website`, `head_of_department`) 
values
  ('Dipartimento A', 'Via ABC', 12345, 'a@gmail.com', 'www.a.com', 'Mr. A'),
  ('Dipartimento B', 'Via BCD', 54678, 'b@gmail.com', 'www.b.com', 'Mrs.B'),
  ('Dipartimento C', 'Via CDE', 891011, 'c@gmail.com', 'www.c.com', 'Mr.C'),
  ('Dipartimento D', 'Via DEF', 121314, 'd@gmail.com', 'www.d.com', 'Mrs.D'),
  ('Dipartimento E', 'Via EFG', 151617, 'e@gmail.com', 'www.e.com', 'Mr.E');

  delete from `departments`
  where `phone` = "121314"