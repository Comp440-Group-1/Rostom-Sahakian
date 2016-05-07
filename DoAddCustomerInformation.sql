/***************************/
/**@auth: Rostom Sahakian**/
/**Class: DB Design 440**/
--Function DoAddCustomerInformation<<--------
--To EXECUT THIS FILE GET ExecuteAllProductData.sql

--===================================================
--Tables Used--
--1. master_name
--2. addresses
--3. telephone
--4. email
--5. countries
--6. US_States

---------------------------------------------
ALTER PROCEDURE DoAddCustomerInformation

	------Input variables
	@FirstName varchar(max),
	@LastName varchar(max),
	@Address1 varchar(max),
	@Address2 varchar(max),
	@date_added datetime,
	@date_modified datetime,
	@CountryID varchar(max),
	@StateID varchar(max),
	@ZipCode varchar(max),
	@PhoneNumber varchar(max),
	@Email varchar(max),
	@City varchar(max),
	@downloadedSoftware int,

	-------Ouput variables
	@master int OUTPUT,
	@new_masterID int OUTPUT



AS

BEGIN
	--SET NOCOUNT ON;
	DECLARE @mid int
	
	/**SET @mid = 0**/
	
	--First lets check if the email table does not have this customer registered in there already---
	/**SELECT 
	@mid = master_id 
	FROM dbo.emails 
	WHERE 
	email = @Email

	SET @master = @mid**/--TDB 05/5/2016 RS


	DECLARE @masterID int
	DECLARE @f varchar(max)
	DECLARE @l varchar(max)
	DECLARE @a1 varchar(max)
	DECLARE @a2 varchar(max)
	DECLARE @z varchar(max)
	DECLARE @c varchar(max)
	DECLARE @e varchar(max)
	DECLARE @t varchar(max)
	DECLARE @cs int
	DECLARE @msid int

	SET @masterID = 0
	SET @f = ''
	SET @l = ''
	SET @a1 = ''
	SET @a2 = ''
	SET @z = ''
	SET @c = ''
	SET @e = ''
	SET @t = ''
	SET @cs = 0
	SET @mid = 0
	--if it is registered then update needed information--
	SELECT   @f =  master_name.f_name,
			 @l = master_name.l_name,
			 @a1 = addresses.address_1,
			 @a2 = addresses.address_2 ,
			 @z = addresses.zipcode,
			 @c = addresses.city,
			 @e = emails.email,
			 @t = telephones.telephone_number,
			 @cs = customer_software.download_id,
			 @mid = master_name.master_id    
			FROM            
						addresses INNER JOIN
                         
						 master_name ON addresses.master_id = master_name.master_id INNER JOIN
                         telephones ON master_name.master_id = telephones.master_id INNER JOIN
                         customer_software ON master_name.master_id = customer_software.master_id INNER JOIN
                         emails ON master_name.master_id = emails.master_id

						 where emails.email = @Email

						SET @master = @mid
					if(@master !=0)
					begin
						 if(@f != @FirstName)

						 Update dbo.master_name set f_name = @FirstName WHERE master_id = @master
						 
						 
						else if(@l != @LastName)

						  Update dbo.master_name set l_name = @LastName WHERE master_id = @master

						else if(@a1 != @Address1)

						  Update dbo.addresses set address_1 = @Address1 WHERE master_id = @master
				

						else if(@a2 != @Address2)

						  Update addresses set address_2 = @Address2 WHERE master_id = @master
						  

						else if(@e != @Email)

						  Update dbo.emails set email = @Email WHERE master_id = @master
	

						else if(@t != @PhoneNumber)

						  Update dbo.telephones set telephone_number = @PhoneNumber WHERE master_id = @master


						else if(@z != @ZipCode)

						   Update dbo.addresses set zipcode = @ZipCode WHERE master_id = @master	
			
					
						else if(@c != @City)
						   
						   Update dbo.addresses set city = @City WHERE master_id = @master


						else if(@cs != @downloadedSoftware)

						  Update dbo.customer_software set download_id = @downloadedSoftware WHERE master_id = @master
		
						 end
				else		
				begin
						 --Insert Into table--

						 --Table 1 to insert => master_name
						INSERT INTO dbo.master_name VALUES(@date_added, NULL, @FirstName, @LastName)
						 --Get the master_id
						SELECT @masterID = master_id  FROM dbo.master_name WHERE f_name = @FirstName AND l_name = @LastName
						SET @new_masterID = @masterID
						--Insert the remaining data into tables
						INSERT INTO dbo.addresses VALUES(@masterID, @date_added, NULL, @Address1, @Address2, @City, @StateID, @ZipCode, @CountryID)
						INSERT INTO dbo.emails VALUES(@masterID, @date_added, NULL, @Email)
						INSERT INTO dbo.telephones VALUES(@masterID, @date_added, NULL, @PhoneNumber)
						INSERT INTO dbo.customer_software VALUES(@masterID, @downloadedSoftware)
				end
END


