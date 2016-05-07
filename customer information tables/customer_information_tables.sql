/**Create table for master name first name last name**/

create table master_name(
master_id int not null primary key identity (1,1),
date_added datetime,
date_modified datetime,
f_name varchar(75),
l_name varchar(75)
)

/**Create table for address**/
create table addresses (
address_id int not null primary key identity(1,1),
master_id int not null,
date_added datetime,
date_modified datetime,
address_1 varchar (255),
address_2 varchar(255),
city varchar(30),
state int,
zipcode varchar(12),
country int not null
)

/**Create email**/
create table emails(
email_id int not null primary key identity(1,1),
master_id int not null,
date_added datetime,
date_modified datetime,
email varchar(150)
)
/** create table for phone number **/
create table telephones (
telephone_id int not null primary key identity(1,1),
master_id int not null,
date_added datetime,
date_modified datetime,
telephone_number varchar (25)
)