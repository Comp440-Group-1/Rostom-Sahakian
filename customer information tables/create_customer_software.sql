CREATE TABLE customer_software(
cs_id int not null primary key identity (1,1),
master_id int not null,
download_id int not null
)