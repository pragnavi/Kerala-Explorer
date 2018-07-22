create table customers(
user_idvarchar(50) references profile(user_id),
Aid
varchar(50),
vehicle_no varchar(50) references transport(vehicle_no),
T_name varchar(50) references tourist_places(T_name),
primary key(user_id,Aid));
create table profile(
user_id varchar(50),
C_name varchar(50),
password varchar(50),
email varchar(50),
phone_no numeric(10,0),
primary key(user_id) );
create table transport(
vehicle_no varchar(50),
type varchar(50),
no_of_persons int,
fare numeric(12,0),
contact numeric(12,0),
primary key(vehicle_no));
create table tourist_places(
T_name varchar(50) primary key,
T_location varchar(50),
Nearby_Airport varchar(50));insert into profile values('1001', 'Simran', 'sim_123', 'simran@gmail.com', 9567545812),
('1002', 'Rohan', 'roh_123', 'rohan@gmail.com', 9567541821),
('1003', 'Nandu', 'nan_123', 'nandu@gmail.com',
9654751236),
('1010', 'Simran', 'simu_123', 'simran123@gmail.com', 7621458321),
('1004', 'Sameer', 'sam_123', 'sameer@gmail.com', 8615473296),
('1006', 'Praveen', 'prav_123', 'praveen@gmail.com', 9586412786),
('1008', 'Sudeep', 'sude_123', 'sudeep@gmail.com', 8475675123),
('1007', 'Kaveri', 'kav_123', 'kaveri@gmail.com', 8645974125);
insert into customers(Aid,user_id,T_name,vehicle_no) values ('1', '1001', 'Varkala beach',
'KL054567'),
('2', '1002', 'Pine forest', 'KL051234'),
('1', '1004', 'Kappad beach', 'KL054782'),
('2', '1001', 'Pine forest', 'KL053691'),
('3', '1004', 'Adventure park', 'KL051234'),
('4', '1003', 'Periyar wild-life sanctuary', 'KL057312'),
('3', '1007', 'Fantasy park', 'KL053123'),
('3', '1002', 'Bekal fort', 'KL038562'),
('3', '1010', 'Fantasy park', 'KL053123'),
('4', '1004', 'Azhikal beach', 'KL054567'),
('4', '1006', 'Periyar wild-life sanctuary', 'KL057312'),
('2', '1008', 'Light house beach', 'KL057568'),
('2', '1007', 'Kumarakom bird sanctuary', 'KL050312'),
('1', '1006', 'Kappad beach', 'KL041567');
insert into tourist_places values('Varkala beach', 'Varkala' ,'Trivandrum International
Airport'), ('Pine forest', 'Vagamon', 'Cochin International Airport'),
('Kappad beach', 'Kozhikode', 'Karipur International Airport'), ('Adventure park',
'Vagamon','Cochin International Airport'), ('Periyar wild-life sanctuary', 'Thekkady', 'Madurai
Airport'), ('Fantasy park', 'Malampuzha', 'Coimbatore International Airport'), ('Bekal fort',
'Kasargod', 'Manglore Airport'),
('Azhikal beach', 'Karunagapally', 'Trivandrum International Airport'), ('Light house beach',
'Kovalam', 'Trivandrum International Airport'), ('Kumarakom bird sanctuary', 'Kumarakom',
'Cochin International Airport');
insert into transport(vehicle_no,type,no_of_persons,fare,contact)values('KL054567', 'Shuttle',
8,3000, 9876543234),
('KL051234', 'Prime SUV', 5, 2000, 9948251632),
('KL054782', 'Cab', 4, 1500, 8688226134),
('KL053691', 'Cab', 4, 1500, 8247492958),
('KL057312', 'Mini Bus', 8, 3000, 9567545832),
('KL053123', 'Prime Sedan', 7, 2700, 8242382958),
('KL038562', 'Cab', 6, 2300, 9382346832),
('KL057568', 'Cab', 7, 2700, 9382325367),
('KL050312', 'Shuttle',8, 3000, 9382325213),
('KL041567', 'Cab', 4, 1500, 9382325367);
