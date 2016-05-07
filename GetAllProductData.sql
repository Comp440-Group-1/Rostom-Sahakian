/***************************/
/**@auth: Rostom Sahakian**/
/**Class: DB Design 440**/
--To EXECUT THIS FILE GET ExecuteAllProductData.sql

--===================================================
--Tables Used:
--1. additional_data 
--2. combinations
--3. features
--4. platforms
--5. release_type
--6. version_per_platform
--7. versions
--===================================================
--Fucntion +created and changed to -alter !important 
Alter procedure GetAllProductData

	@GetVersion float,
	@feature varchar(max) OUTPUT,
	@platform varchar(max) OUTPUT,
	@version float OUTPUT,
	@released float OUTPUT,
	@date_released datetime OUTPUT,
	@released_type varchar(max) OUTPUT,
	@version_per_platform_id int OUTPUT

------------------------------------------------------------------
--================================================================
AS 
----Begin query process----

BEGIN
	DECLARE @p varchar(max)
	DECLARE @v varchar(max)
	DECLARE @r_type varchar(max)
	DECLARE @r_date datetime
	DECLARE @f varchar(max)
	DECLARE @r_version float
	DECLARE @vpid int

	SET @p = ''
	SET @v = ''
	SET @r_date = ''
	SET @f = ''
	SET @r_type = ''
	SET @r_version = 0.0
	SET @vpid = 0
------------------------------------------------SELECT------------------------------------------------
SELECT       
			  @v = versions.version_number, 
			  @p = platforms.platform_name, 
			  @r_version = additional_data.release, 
			  @r_type = release_type.r_type, 
			  @r_date = additional_data.date_released, 
			  @f = @f+features.feature+char(10)+'',
			  @vpid = version_per_platform.v_p_id
--------------FROM------------------------------------------------------------------------------------
FROM            additional_data INNER JOIN
                         combinations ON additional_data.combo_id = combinations.combo_id INNER JOIN
                         release_type ON combinations.r_type_id = release_type.r_type_id INNER JOIN
                         version_per_platform ON combinations.v_p_id = version_per_platform.v_p_id INNER JOIN
                         platforms ON version_per_platform.p_id = platforms.platform_id INNER JOIN
                         versions ON version_per_platform.v_id = versions.version_id INNER JOIN
                         features ON combinations.f_id = features.features_id
						 
						 WHERE
						 versions.version_number = @GetVersion

						 ORDER BY date_released ASC
--------------------------SETTING THE FETCHED VALUES FOR EXECUTION-------------------------------------
						 SET @feature = @f
						 SET @version = @v
						 SET @platform = @p
						 SET @released = @r_version
						 SET @date_released = @r_date
						 SET @released_type = @r_type
						 SET @version_per_platform_id = @vpid
---------------------------USE THE SAME NAME ON THE EXECUTION FILE--------------------------------------
----------------------------------------END QUERY-------------------------------------------------------
END



