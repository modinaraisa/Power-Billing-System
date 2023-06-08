SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
ab billing.a_id%type;
pm billing.payment_mode%type;
pyd billing.pay_date%type;
bm billing.bill_amount%type;
pd billing.paid_amount%type;
ep billing.excess_paid%type;

n billing.bill_no%type := &bill_number;
p billing.statusb%type := '&billing_status';

BEGIN
	
	IF (n>=605 AND n<=609) THEN 
	
		SELECT a_id, payment_mode,pay_date,bill_amount,paid_amount,excess_paid into ab, pm,pyd,bm,pd,ep from billing@site5 where bill_no = n;
	
		DELETE FROM billing@site5 WHERE bill_no= n;
	
		INSERT INTO billing@site5(bill_no,a_id,payment_mode,pay_date,bill_amount,paid_amount,excess_paid,statusb)values (n,ab,pm,pyd,bm,pd,ep,p);
		
	ELSIF (n>=610 AND n<=614) THEN 
	
		SELECT a_id, payment_mode,pay_date,bill_amount,paid_amount,excess_paid into ab, pm,pyd,bm,pd,ep from billing@site6 where bill_no = n;
	
		DELETE FROM billing@site6 WHERE bill_no= n;
	
		INSERT INTO billing@site6(bill_no,a_id,payment_mode,pay_date,bill_amount,paid_amount,excess_paid,statusb)values (n,ab,pm,pyd,bm,pd,ep,p);
		
	ELSE
		DBMS_OUTPUT.PUT_LINE('Out of Range!');
	END IF;	
	
	
END;
/
select * from billing@site5;
select * from billing@site6;


commit;