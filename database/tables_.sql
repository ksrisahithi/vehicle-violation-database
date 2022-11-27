create table user(
    aadhar_no varchar(20) primary key,
    passwd varchar(20),
    legal_name varchar(20)
)

desc user;

create table vehicle_details(
    reg_no varchar(10) primary key,
    reg_date date,
    chassis_no int(20),
    engine_no int(20),
    aadhar_no varchar(20),
    vehicle_class varchar(20),
    fuel varchar(10),
    model varchar(20),
    regn_upto date,
    mv_tax_upto date,
    insurance_upto date,
    pucc_upto date, 
    emission_norms varchar(20),
    rc_status varchar(20),
    foreign key (aadhar_no) references user(aadhar_no)
);

desc vehicle_details;

create table traffic_police(
    id int(10) primary key, 
    name  varchar(20),
    designation varchar(20),
    zone_ varchar(20)
);

desc traffic_police;

create table violation(
    violation_id int(10),
    violation_name varchar(40),
    fine decimal(6, 2)
);

desc violation;
alter table violation add primary key(violation_id);

