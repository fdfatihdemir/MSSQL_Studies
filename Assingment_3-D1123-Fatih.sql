-------------------SQL ASSINGMENT-3 ------------------
---1. **Conversion Rate**
--Below you see a table of the actions of customers visiting the website by clicking 
--on two different types of advertisements given by an E-Commerce company.
--Write a query to return the conversion rate for each Advertisement type.

-- 1.** D�n���m Oran�**
--(A�a��da, bir E-Ticaret �irketi taraf�ndan verilen iki farkl� reklam t�r�ne t�klayarak web 
--sitesini ziyaret eden m��terilerin eylemlerinin bir tablosunu g�r�yorsunuz. 
--Her bir Reklam t�r� i�in d�n���m oran�n� d�nd�recek bir sorgu yaz�n.)


---a.	Create above table (Actions) and insert values,
----Yukar�daki tabloyu (Eylemler) olu�turun ve de�erleri ekleyin,

create database Advertisement

create table actions
(
		Visitor_ID int identity (1,1) primary key,
		Adv_Type varchar (50) not null,
		Action_Table varchar (50) not null
);

INSERT actions VALUES
 ('A',  'Left')
,('A' , 'Order')
,('B' , 'Left')
,('A' , 'Order')
,('A' , 'Review')
,('A' , 'Left')
,('B' , 'Left')
,('B' , 'Order')
,('B' , 'Review')
,('A' , 'Review')

TRUNCATE TABLE actions;  --Tablo i�indeki verileri siler.


select *     --(tablodaki verilere g�z atmak i�in)
from actions



--b.	Retrieve count of total Actions and Orders for each Advertisement Type, 
---(Her Reklam T�r� i�in toplam ��lem ve Emir say�s�n� alma)

---Adv_Type tablosuna g�re group by yap�yoruz. Action_Table da 'Order'a e�it olanlar� say�yoruz. 
---Sayd���m�z de�erleri Total Action olarak yeni bir column da g�steriyoruz. 

select  Adv_Type, count(Action_Table) Total_Action    
from actions 
where Action_Table= 'Order'
group by Adv_Type;

select Adv_Type, count(Action_Table) total
from actions 
group by Adv_Type



----c.	Calculate Orders (Conversion) rates for each Advertisement Type by dividing 
--by total count of actions casting as float by multiplying by 1.0. 
--(Her bir Reklam T�r� i�in Sipari� (D�n���m) oranlar�n�, --
--1.0 ile �arparak de�i�ken olarak g�sterilen toplam eylem say�s�na b�lerek hesaplay�n.)

----BU SORUYU YAPAMADIM--- �OK U�RA�TIM OLMADI :( ---
--------------------------
select *
from actions
-----------------------------


select * 
from Total_Action
full outer join total on Total_Action.Adv_Type=total.Adv_Type


----------------------------------------------
select * 
from (select  Adv_Type, count(Action_Table) Total_Action    
from actions 
where Action_Table= 'Order'
group by Adv_Type) A

full outer join (select Adv_Type, count(Action_Table) total
from actions 
group by Adv_Type) B
on Total_Action.Adv_Type=total.Adv_Type

-----------------------------------------------
select A.Adv_Type,A.Total_Action,B.total
from (select  Adv_Type, count(Action_Table) Total_Action    
from actions 
where Action_Table= 'Order'
group by Adv_Type) A

full outer join (select Adv_Type, count(Action_Table) total
from actions 
group by Adv_Type) B
on Total_Action.Adv_Type=total.Adv_Type


----------------------------------------------


select A.Adv_Type,A.Total_Action,B.total
from (select  Adv_Type, count(Action_Table) Total_Action    
from actions 
where Action_Table= 'Order'
group by Adv_Type) A

left join (select Adv_Type, count(Action_Table) total
from actions 
group by Adv_Type) B
on Total_Action.Adv_Type=total.Adv_Type

-----------------------------------------------

select count(Action_Table) total
from actions 
where Action_Table = 'Order' and Adv_Type= 'A'
group by Adv_Type

select count(Action_Table) total
from actions 
where Action_Table = 'Order' and Adv_Type = 'B'





-----------------------------------



select  AA.Adv_Type , (BB.total/(CC.total_Action*1.0) Conversion_Rate
from actions AA
		 join (select  Adv_Type, count(Action_Table) Total_Action    
		from actions 
		where Action_Table= 'Order'
		group by Adv_Type) BB	

		on AA.Adv_Type=BB.Adv_Type

		join(select Adv_Type, count(Action_Table) total
		from actions 
		group by Adv_Type) CC

		on AA.Adv_Type=CC.Adv_Type




