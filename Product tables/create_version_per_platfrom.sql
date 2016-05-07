/**Now Create a table that holds the version id as v_id and platform id as p_id the comobo key is v_p_id **/
create table version_per_platform(
v_p_id int not null primary key identity(1,1),
p_id int not null,
v_id int not null
)


insert into dbo.version_per_platform values(1,2)
insert into dbo.version_per_platform values(2,1)
insert into dbo.version_per_platform values(2,3)
insert into dbo.version_per_platform values(1,4)