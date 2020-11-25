create database {{database}};

create user if not exists {{user}} with login password '{{password}}';

grant all on database {{database}} to {{user}};

