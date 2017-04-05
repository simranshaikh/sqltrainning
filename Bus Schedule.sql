DROP TABLE schedule;
DROP TABLE route;
DROP TABLE bus;
DROP TABLE contractor;



Create table contractor
(
 contractor_id Varchar2(5) primary key,
 cname Varchar2(20),
 contact Varchar2(10)
);

INSERT INTO contractor VALUES ( 'c101', 'Ganesh Shinde', '9812345678' );
INSERT INTO contractor VALUES ( 'c102', 'Rajesh Sonawane', '9712345678' );
INSERT INTO contractor VALUES ( 'c103', 'Sameer Chavan', '9912345678' );
INSERT INTO contractor VALUES ( 'c104', 'Sandip Verma', '9822345678' );
Insert into contractor values ( 'c105', 'Rohan Sharma', '9832345678' );


Create table bus
(
 bus_no Varchar2(15) primary key ,
 bus_type Varchar2(20) not null,
 manufacturer Varchar2(20),
 manufacturing_dt date,
 contractor_id Varchar2(5) references contractor(contractor_id) );

INSERT INTO bus VALUES('MH-12-GH-123', 'Semi-Luxury', 'Ashoka Leyland', '12-DEC-2000', 'c102'); 
INSERT INTO bus VALUES('CH-23-FN-234', 'AC', 'Forge Motors', '21-jun-2005', 'c101');
INSERT INTO bus VALUES('MP-15-FD-23', 'Semi-Luxury', 'Tota Motors', '10-DEC-1990',  'c103'); 
INSERT INTO bus VALUES('TN-54-GF-0025', 'Non-AC', 'Ashoka Leyland', '12-mar-2000',  'c102'); 
INSERT INTO bus VALUES('TN-14-CA-1212', 'Luxury', 'Forge Motors', '12-apr-2006', 'c102'); 
INSERT INTO bus VALUES('DL-67-AA-1111', 'Non-AC', 'Tota Motors', '24-jan-2007',  'c103'); 
INSERT INTO bus VALUES('GA-11-CA-1234', 'Semi-Luxury', 'Ashoka Leyland', '12-DEC-2000', NULL); 
INSERT INTO bus VALUES('UP-56-AP-3412', 'AC', 'Tota Motors', '12-MAY-1995',  'c104'); 
INSERT INTO bus VALUES('UP-67-NP-875', 'Luxury', 'Ashoka Leyland', '17-AUG-2006',  'c101'); 
INSERT INTO bus VALUES('MH-50-GH-5675', 'Luxury', 'Ashoka Leyland', '20-AUG-2006',  'c101'); 

Create table route
(
 routeno Varchar2 (5) primary key,
 start_loc Varchar2(20),
 End_loc Varchar2 (20)
);

INSERT INTO route VALUES('r001', 'Pune', 'Chennai');
INSERT INTO route VALUES('r002', 'Chennai', 'Pune');
INSERT INTO route VALUES('r003', 'Mumbai', 'Chennai');
INSERT INTO route VALUES('r004', 'Chennai', 'Mumbai');
INSERT INTO route VALUES('r005', 'Mapusa', 'Mumbai');
INSERT INTO route VALUES('r006', 'Mumbai', 'Mapusa');
INSERT INTO route VALUES('r007', 'Pune', 'Mumbai');
INSERT INTO route VALUES('r008', 'Mumbai', 'Pune');
INSERT INTO route VALUES('r009', 'Chennai', 'Mapusa');
INSERT INTO route VALUES('r010', 'Mapusa', 'Chennai');

Create table schedule (
Schedule_id VARCHAR2 (5),
Bus_no VARCHAR2 (15) REFERENCES bus (bus_no) , 
Route_no VARCHAR2 (5) REFERENCES route (routeno) , 
Start_time DATE);

INSERT INTO schedule VALUES('s0001', 'MH-12-GH-123', 'r001', SYSDATE-2);
INSERT INTO schedule VALUES('s0002', 'MH-12-GH-123', 'r002', sysdate-3);
INSERT INTO schedule VALUES('s0003', 'TN-54-GF-0025', 'r001', SYSDATE);
INSERT INTO schedule VALUES('s0004', 'DL-67-AA-1111', 'r003', SYSDATE + 5/24);
INSERT INTO schedule VALUES('s0005', 'CH-23-FN-234', 'r005', SYSDATE + 27/24);
INSERT INTO schedule VALUES('s0006', 'GA-11-CA-1234', 'r004', SYSDATE+1);
INSERT INTO schedule VALUES('s0007', 'CH-23-FN-234', 'r004', SYSDATE + 2);
INSERT INTO schedule VALUES('s0008', 'DL-67-AA-1111', 'r003', SYSDATE + 30/24);
INSERT INTO schedule VALUES('s0009', 'CH-23-FN-234', 'r005', SYSDATE + 3);
INSERT INTO schedule VALUES('s0010', 'DL-67-AA-1111', 'r002', SYSDATE + 60/24);
commit; 
