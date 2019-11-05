EXEC sp_who
SELECT @@spid
EXEC sp_who 52
SELECT @@version
SELECT USER_NAME(),DB_name(),@@servername
USE library	
	SELECT *
	FROM information_schema.tables
	WHERE table_type = 'base table'