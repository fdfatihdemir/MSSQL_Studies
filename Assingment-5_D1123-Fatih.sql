
       /*ASSINGMENT-5*/

/*Factorial Function

Create a scalar-valued function that returns the factorial of a number you gave it.

fakt�riyel fonksiyon

Verdi�iniz say�n�n fakt�riyelini d�nd�ren skaler de�erli bir i�lev olu�turun.*/

Create function factor(@Factoru_istenen_sayi int)
returns int
as begin
Declare @i int = 1,@sonuc int=1
while (@i<=@Factoru_istenen_sayi)
Begin
	Set @sonuc = @sonuc * @i
	Set @i += 1
End
return @sonuc
End


	
Select  dbo.factor(3);

Select dbo.factor(4);

Select dbo.factor(5);



