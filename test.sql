drop table workers;
create table workers(
	ID int primary key not null,
	name text not null,
	workedDays int not null,
	workedHours int not null,
	payment int not null
);		
insert into workers values(1, '浜松太郎', 20, 800, 300000);
insert into workers values(2, '静岡花子', 15, 600, 225000);

select name from workers where ID=1;
select ID from workers where ID=1;
select workedDays from workers where ID=1;
select workedHours from workers where ID=1;
select payment from workers where ID=1;

select name from workers where ID=2;
select ID from workers where ID=2;
select workedDays from workers where ID=2;
select workedHours from workers where ID=2;
select payment from workers where ID=2;
