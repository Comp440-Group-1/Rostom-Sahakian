create table platforms(
platform_id int not null primary key identity(1,1),
platform_name varchar(10) not null
)


insert into dbo.platforms select distinct Platform as p_name from dbo.temp_data;