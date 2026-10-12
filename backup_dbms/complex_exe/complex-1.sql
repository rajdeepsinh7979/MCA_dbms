create or replace procedure pro_com_1
(cid number,pid number)
as
	Length_ft_s NUMBER(5,2);
	Width_ft_s NUMBER(5,2);
	Height_ft_s NUMBER(5,2);
	Length_mtr NUMBER(5,2);
	Width_mtr NUMBER(5,2);
	Height_mtr NUMBER(5,2);
	Volume NUMBER(10,2);
	p_price NUMBER(10,2);
	v_price NUMBER(10,2);
 	p_grade varchar2(10);
begin
	select Length_Ft,Width_Ft,Height_Ft,price into Length_ft_s,Width_ft_s,Height_ft_s,p_price from PRODUCT_INVENTORY where Product_ID=pid;

	Length_mtr:=Length_ft_s*0.3048;
	Width_mtr:=Width_ft_s*0.3048;
	Height_mtr:=Height_ft_s*0.3048;
	
	Volume:= Length_mtr* Width_mtr * Height_mtr;
	if Volume > 5 then
		v_price:=p_price+((p_price*10)/100);
		dbms_output.put_line('Amount after surcharg : '||v_price);
	end if;
	
	select Grade into p_grade from CUSTOMER where CUSTID=cid;
	if p_grade='A' then
		v_price:=v_price-((v_price*15)/100);
	elsif p_grade='B' then
		v_price:=v_price-((v_price*10)/100);
	else
		v_price:=v_price-((v_price*5)/100);
	end if;
	dbms_output.put_line(v_price);
end;
/
