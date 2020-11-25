USE people_registry;
create table people (id int identity(1,1) primary key, firstname varchar(255), surname varchar(255), street_address varchar(255), zipcode integer, country varchar(255));
GO

insert into people (firstname, surname, street_address, zipcode, country) values ('Ture', 'Sventon', 'Tulegatan 17', 12345, 'Sweden');
insert into people (firstname, surname, street_address, zipcode, country) values ('Allan', 'Svensson', 'Strögatan', 98761, 'Sweden');
insert into people (firstname, surname, street_address, zipcode, country) values ('Hubert', 'Trehuvud', 'Halkgtan 39', 46383, 'Sweden');
insert into people (firstname, surname, street_address, zipcode, country) values ('Snyggve', 'Tryggvesson', 'Korta Långa Gatan 3', 32567, 'Sweden');
insert into people (firstname, surname, street_address, zipcode, country) values ('Boll-Kalle', 'Pallesson', 'Jättekorta Gatan 0.5', 34567, 'Sweden');
GO