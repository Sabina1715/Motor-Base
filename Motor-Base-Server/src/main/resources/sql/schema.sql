create database MotorBase
create table Users(
	ID int primary key,
	password varchar(45) not null,
	phone_number varchar(45) ,
	email varchar(45),
	username varchar(45),
	surname varchar(45),
	user_photo varchar(300),
	birthday date,
	city varchar(45),
	driving_experience varchar(45),
	about varchar(300),
	user_role varchar(45)
);

create table Car(
	ID int primary key,
	type varchar(45),
	mark varchar(45),
	model varchar(45),
	year_make int,
	run int,
	color varchar(45),
	type_body varchar(45),
	gearbox varchar(45),
	engine_powers int,
	engine_volume decimal(2,1),
	all_driver varchar(45),
);

create table PartOfHistory(
	ID int primary key,
	ID_car int foreign key references Car(ID),
	description varchar(45),
	date date,
	type_history varchar(45),
);

create table Announcement(
	ID int primary key,
	ID_car int foreign key references Car(ID),
	ID_user int foreign key references UsersLogin(ID),
	name varchar(45),
	description varchar(45),
	price decimal,
	date date
);

create table Feedback(
	ID int primary key,
	ID_user int foreign key references UsersLogin(ID),
	ID_car int foreign key references Car(ID),
	comment varchar(300),
	grade decimal(2,1)
);
