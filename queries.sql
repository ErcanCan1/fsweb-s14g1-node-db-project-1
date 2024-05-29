-- Veritabanı Sorguları

-- Posta kodu 1010 olan tüm müşterileri bulun
select * from [Customers] where PostalCode = '1010';

-- id'si 11 olan tedarikçinin telefon numarasını bulun
select Phone from [Supliers] where SupplierID =  11;

-- Verilen ilk 10 siparişi, sipariş tarihine göre azalan şekilde listeleyin
select * from [orders] order by OrderDate desc limit 10
-- Londra, Madrid veya Brezilya'da yaşayan tüm müşterileri bulun
select * from[Customers] where City in ('London', 'Madrid') or Country = 'Brasil'
select * from[Customers] where City = 'London' or City = 'Madrid' or Country = 'Brasil'
-- "The Shire" için bir müşteri kaydı ekleyin, ilgili kişi adı "Bilbo Baggins", adres - "Bag End" içinde "1 Hobbit-Hole", posta kodu "111" ve ülke "Middle Earth"
insert into Customers (CustomerName,ContactName,Address,City,PostalCode,Country) values('The Shire', 'Bilbo Baggins','Bag End',"1 Hobbit-Hole","111","Middle Earth")
insert into Customers values(99, 'The Shire', 'Bilbo Baggins','Bag End',"1 Hobbit-Hole","111","Middle Earth"); -- tüm değerler tabloya göre sıralı biçimde eklenirse başlıkları eklemeya gerek kalmaz.
-- Posta kodu "11122" olarak değişecek şekilde Bilbo Baggins kaydını güncelleyin
update Customers set PostalCode = '11122' where CustomerName = 'Bilbo Baggins';
-- (Zorlayıcı Görev) Müşteriler tablosunda kaç farklı şehrin saklandığını keşfetmek için bir sorgu bulun. Tekrarlar çift sayılmamalıdır
select distinct City from Customers 
select Count(distinct City) as 'CityCount' from Customers;
-- (Zorlayıcı Görev) 20 karakterden uzun adları olan tüm tedarikçileri bulun. Adın uzunluğunu almak için "length(SupplierName)" kullanabilirsiniz.
select * from [Suppliers] where length(SupplierName)>20;