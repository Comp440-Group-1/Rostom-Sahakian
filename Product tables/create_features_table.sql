create table release_type(
features_id int not null primary key identity(1,1),
feature varchar(100) not null
)


insert into dbo.features select distinct new_features as feat_name from dbo.temp_data;