DROP TABLE admins;
DROP TABLE customer;
DROP TABLE feedback;
DROP TABLE billing;
DROP TABLE invoice;

Set lines 5000;


CREATE TABLE admins(
	admin_id int,
	admin_name varchar2(25),
	login_id varchar2(25),
	securityKey varchar2(25),
	PRIMARY KEY(admin_id));
	

insert into admins (admin_id,admin_name,login_id,securityKey)values (200,'Ishtiaque','Ishtiaque20','Ishtiaque20');
insert into admins (admin_id,admin_name,login_id,securityKey)values (201,'Raisa','Raisa30','Raisa30');
insert into admins (admin_id,admin_name,login_id,securityKey)values (202,'Punni','Punni40','Punni40');

CREATE TABLE customer(
        cust_id int,
        cust_name varchar2(25),
		account_type varchar2(25),
		cust_address varchar2(30),
		cust_state  varchar2(25),
		city     varchar2(25),
		pincode  varchar2(25),
		email_id  varchar2(25),
		cust_pass varchar2(25),
		cust_status varchar2(25));
	 

insert into customer values(1,'Rita','customer','Uttora','Pemanent','Naoga','D1207','rita@gmail.com','rita4532ah','businessman');
insert into customer values(2,'mita','customer','Dhanmondi','Temporary','Dhaka','D1205','mita@gmail.com','mita4532ah','lawyer');	
insert into customer values(3,'jannat','customer','Kolabagan','Permanent','Dhaka','D1208','jannat@gmail.com','jannat4532ah','doctor');	
insert into customer values(4,'Raisa','customer','Mirpur','Permanent','Cumilla','D1209','raisa@gmail.com','raisa4532ah','employee');	
insert into customer values(5,'Zuthi','customer','Modhubaag','Permanent','Ctg','D1211','zuthi@gmail.com','zuthi4532ah','faculty');	
insert into customer values(6,'Istiaque','customer','Jhilpaar','Permanent','Borishal','D1202','ishti@gmail.com','Ish4532ah','lawyer');		

CREATE TABLE feedback(
        feedback_id int,
		cust_id  int,
		feedback_details  varchar2(25),
		feedback_date    varchar2(25),
		feedback_status   varchar2(25));
		
insert into feedback values (151,4,'Service is Good','12/08/2022','Good');
insert into feedback values (152,8,'Service Very Good','09/07/2022','Bad');
insert into feedback values (153,3,'Service is Bad','22/08/2022','Good');
insert into feedback values (154,2,'Service is Good','11/06/2022','Bad');
insert into feedback values (155,9,'Service is Not Good','18/04/2022','Good');	
insert into feedback values (156,11,'Service is Poor','17/08/2022','Good');	
	

CREATE TABLE billing(
	bill_no int,
	a_id int,
	payment_mode VARCHAR2(25),
	pay_date varchar2(20),
	bill_amount FLOAT,
	paid_amount FLOAT,
	excess_paid FLOAT,
	statusb varchar2(25));

insert into billing values (600,70,'Pay_Order','2022/07/30',1000.00,1250.00,250.00,'paid');
insert into billing values (601,81,'Pay_Order','2022/06/11',1200.00,1300.00,100.00,'unpaid');
insert into billing values (602,62,'Pay_Order','2022/08/16',1600.00,1800.00,200.00,'paid');
insert into billing values (603,73,'Pay_Order','2022/05/22',1700.00,1850.00,150.00,'unpaid');
insert into billing values (604,88,'Pay_Order','2022/04/18',1900.00,2050.00,150.00,'paid');

CREATE TABLE invoice(
	inv_id int,
	electricityBoard varchar2(25),
	bill_no int,
	present_reading float,
	p_unit float,
	fixed_chrg float,
	tax float,
	bill_amount FLOAT,
	statusInv varchar2(25));

insert into invoice values (305,'Mohammadpur',604,325.00,175.00,300.00,90.00,390.00,'paid');
insert into invoice values (306,'Mohammadpur',601,400.00,180.00,400.00,100.00,500.00,'unpaid');
insert into invoice values (307,'Mohammadpur',603,600.00,200.00,500.00,90.00,590.00,'paid');
insert into invoice values (308,'Mohammadpur',602,500.00,160.00,400.00,110.00,510.00,'unpaid');
insert into invoice values (309,'Mohammadpur',600,700.00,220.00,550.00,200.00,750.00,'paid');


CREATE OR REPLACE TRIGGER selectFrom 
AFTER INSERT
ON customer
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Credentials Inserted!!');
END;
/


commit;