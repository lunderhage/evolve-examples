USE people_registry;

create table people (id serial primary key, firstname string, surname string, street_address string, zipcode integer, country string);

insert into people (firstname, surname, street_address, zipcode, country) values ('Ture', 'Sventon', 'Tulegatan 17', 12345, 'Sweden');
insert into people (firstname, surname, street_address, zipcode, country) values ('Allan', 'Svensson', 'Str�gatan', 98761, 'Sweden');
insert into people (firstname, surname, street_address, zipcode, country) values ('Hubert', 'Trehuvud', 'Halkgtan 39', 46383, 'Sweden');
insert into people (firstname, surname, street_address, zipcode, country) values ('Snyggve', 'Tryggvesson', 'Korta L�nga Gatan 3', 32567, 'Sweden');
insert into people (firstname, surname, street_address, zipcode, country) values ('Boll-Kalle', 'Pallesson', 'J�ttekorta Gatan 0.5', 34567, 'Sweden');
