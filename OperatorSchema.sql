drop table bill_details; 
drop table customers; 
drop table plans; 
drop table services; 

create table Services
(
Service_id number(6) primary key,
Service_name varchar2(20) not null,
Launch_date   Date not null
);

create table Plans
(
Plan_id number(6) primary key,
Plan_name varchar2(20) not null,
Service_id number(6) ,
Rental_charge number(10) not null,
Installation_charge number(10) not null,
Usage_charge number(10) not null,
Usage_Charge_Desc varchar2(50) not null,
constraint  fk_service_id foreign key(service_id) references Services
);

create table Customers
(
Cust_id number(6) primary key,
Plan_id number(6) not null,
Registration_date date not null,
Next_bill_Date date not null,
Payment_mode varchar2(15),
constraint fk_Plan_id foreign key(Plan_id) references Plans
);


create table Bill_Details
(
Bill_no varchar2(15) not null,
Cust_id number(6) not null,
Bill_amount number(4) not null,
Bill_date date not null,
constraint fk_Cust_id foreign key(Cust_id) references Customers
);

insert into Services values (101, 'GSM Voice Call', '01-Apr-10');
insert into Services values (102, 'Telephone Connection', '01-Apr-09');
insert into Services values (103, 'BB Connection', '01-Aug-11');
insert into Services values (104, 'Dialup Connection', '01-Jun-10');

insert into Plans values (1, 'Basic GSM Plan', 101, 150, 0,1,'per min charge');
insert into Plans values (2, '250 VoicePlan', 101, 250, 0,0.60,'per min charge');
insert into Plans values (3, '500 Voice Plan', 101, 500, 100,0,'per min charge');
insert into Plans values (4, 'Basic PSTN Plan', 102, 200, 100,1,'per min charge');
insert into Plans values (5, 'PSTN Economic Plan', 102, 550, 100,0.50,'per min charge');
insert into Plans values (6, 'Basic BB Plan', 103, 250, 500,1,'per min charge');
insert into Plans values (7, 'Silver Plan', 103, 499, 500,0.50,'per min charge');
insert into Plans values (8, 'Unlimited Plan', 103, 1500, 500,0,'per min charge');
insert into Plans values (9, 'Basic Dialup Plan', 104, 550, 0,1,'per min charge');
insert into Plans values (10, 'Gold Plan', 104, 1050, 0,0,'per min charge');


insert into Customers values (1111, 1, '01-Apr-13', '01-Aug-13', 'Direct debit');
insert into Customers values (1112, 1, '01-Apr-12', '01-Aug-13', 'Direct debit');
insert into Customers values (1113, 10, '15-Jun-12', '01-Aug-13', 'Cash');
insert into Customers values (1114, 8, '15-Jun-11', '01-Aug-13', 'Cash');
insert into Customers values (1115, 8, '15-Jun-13', '01-Aug-13', 'Cheque');
insert into Customers values (1116, 7, '20-May-13', '01-Aug-13', 'Cheque');
insert into Customers values (1117, 8, '25-Jun-12', '01-Jul-13', 'Cheque');


insert into Bill_Details  values ('1111-B1', 1111, 800, '01-May-13');
insert into Bill_Details  values ('1111-B2', 1111, 600, '01-June-13');
insert into Bill_Details  values ('1111-B3', 1111, 550, '01-July-13');
insert into Bill_Details  values ('1112-B12', 1112, 450, '01-Apr-13');
insert into Bill_Details  values ('1112-B13', 1112, 725, '01-May-13');
insert into Bill_Details  values ('1112-B14', 1112, 675, '01-Jun-13');
insert into Bill_Details  values ('1113-B10', 1113, 1050, '01-Apr-13');
insert into Bill_Details  values ('1113-B11', 1113, 1050, '01-May-13');
insert into Bill_Details  values ('1113-B12', 1113, 1050, '01-Jun-13');
insert into Bill_Details  values ('1114-B22', 1114, 1500, '01-Apr-13');
insert into Bill_Details  values ('1114-B23', 1114, 1500, '01-May-13');
insert into Bill_Details  values ('1114-B24', 1114, 1500, '01-Jun-13');
insert into Bill_Details  values ('1115-B24', 1115, 1500, '01-Apr-13');
insert into Bill_Details  values ('1115-B24', 1115, 1500, '01-May-13');
insert into Bill_Details  values ('1115-B24', 1115, 1500, '01-Jun-13');
insert into Bill_Details  values ('1115-B25', 1115, 1500, '01-Jul-13');
insert into Bill_Details  values ('1116-B1', 1116, 480, '20-May-13');
insert into Bill_Details  values ('1116-B2', 1116, 880, '01-Jun-13');
insert into Bill_Details  values ('1116-B3', 1116, 966, '01-Jul-13');
insert into Bill_Details  values ('1117-B12', 1117, 1500, '01-Apr-13');
insert into Bill_Details  values ('1117-B13', 1117, 1500, '01-May-13');
insert into Bill_Details  values ('1117-B14', 1117, 1500, '01-Jun-13');


commit;
