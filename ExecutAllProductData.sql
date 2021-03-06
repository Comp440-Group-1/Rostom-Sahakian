/**@auth: Rostom Sahakian**/
/**CLass: DB Design 440**/
/**CSUN Spring 2016**/

--Declare Variables--
DECLARE @platforms varchar(max)
DECLARE @versions float
DECLARE @release_dates datetime
DECLARE @release_type float
DECLARE @release_name varchar(max)
DECLARE @features varchar(max)
DECLARE @version_platform int
--TRY STRATS HERE--
BEGIN TRY

EXEC GetAllProductData

	--------------------------------------------------------
	--For Customers to change versions
	-- Current availability:
		--1.1 Windows
		--1.2 Linux
		--2.1 Windows
		--2.2 Linux
	--------------------------------------------------------
	@GetVersion = 1.2,--This variable can be changed by the customer by choosing what version of the software thye would like to download.
	---------------------------------------------------------
	
	/**Setting the variables**/
	@feature = @features OUTPUT,
	@platform = @platforms OUTPUT,
	@version = @versions OUTPUT,
	@released = @release_type OUTPUT,
	@date_released = @release_dates OUTPUT,
	@released_type = @release_name OUTPUT,
	@version_per_platform_id = @version_platform OUTPUT

--------------------------------------------------------------------------------------------------------------------
	if(@platforms = '')--if plateform is empty rais error and display the message below
	 RAISERROR ('Error # 101 (no such version exists. please try a correct version).', -- Message text.
               16, -- Severity.
               1 -- State.
               );
			   
	else -- other wise print the message below with fetched data from tables
		print 'Available download links for EHR Systems'
		print ' '
		print 'Link1: Version '+CAST(@versions as varchar(3))+' '+@platforms+' Release '+CAST(@release_type as varchar(3))+' click to Download Now!'
		print ' '
		print 'This version`s features:'
		print @features	--features for the specific software
		print 'Released Date: '+CAST(@release_dates as varchar(12))  
		print 'Released Type: '+@release_name

---------------------------------AFTER THER CUSTOMER CHOOSES THE VERSION GET THEIR INFORMATION AND ADD THEM TO CUSTOMER TABLES-----
-----THE @vpid will be used as the single key that holds the plateform and version of the downloaded software----------------------
-----------------------------------------------CALL the function DoAddCustomerInformation------------------------------------------------------------

	DECLARE @master_id int
	DECLARE @country varchar(100)
	DECLARE @n_master_id int
	BEGIN
	-------------------------------------------------
	          --DoAddCustomerInformation--
	-------------------------------------------------
	EXEC DoAddCustomerInformation

	
	--Customer information can be edited---
	@FirstName = 'Rostom',
	@LastName = 'Sahakian',
	@Address1 = '145 South EVERETT ST.',
	@Address2 = 'Apt #10',
	@date_added = '05/06/2016',
	@date_modified = NULL,
	@CountryID = 215,
	@StateID = 5,
	@ZipCode ='91205',
	@PhoneNumber = '818-555-4444',
	@city = 'Glendale',
	@Email = 'rostom.sahakian@gmail.com',
	@downloadedSoftware = @version_platform,
	
	      -----OUTPUT VARS---
	----FOR TESTING & DEBUGGING---
	@master = @master_id OUTPUT,
	@new_masterID = @n_master_id OUTPUT

	if(@master_id != 0)
		begin
		print '-----Debugging-----'
		print 'This is the customer master id: '+ CAST(@master_id as varchar(max))
		END
	END 
-----------------------------------------------------------------------------------------------------------------------------------	
-----------------------------------------------END CUSTOMER FUNCTION---------------------------------------------------------------
END TRY
--TRY END HERE--
BEGIN CATCH
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;

    SELECT 
        @ErrorMessage = ERROR_MESSAGE(),
        @ErrorSeverity = ERROR_SEVERITY(),
        @ErrorState = ERROR_STATE();

    -- Use RAISERROR inside the CATCH block to return error
    -- information about the original error that caused
    -- execution to jump to the CATCH block.
    RAISERROR (@ErrorMessage, -- Message text.
               @ErrorSeverity, -- Severity.
               @ErrorState -- State.
               );
END CATCH;



