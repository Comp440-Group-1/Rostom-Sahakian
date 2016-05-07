create table versions(
version_id int not null primary key identity(1,1),
version_number float not null
)


insert into versions select distinct Version as v_name from dbo.temp_data;