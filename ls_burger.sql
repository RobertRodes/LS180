create table stars (
id serial primary key,
name varchar(25) unique not null,
distance int check (distance > 0),
spectral_type char(1) check (spectral_type in ('O', 'B', 'A', 'F', 'G', 'K', 'M')),
companions int not null default 0 check (companions >= 0));