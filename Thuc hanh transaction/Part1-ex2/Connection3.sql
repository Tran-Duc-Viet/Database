--4
--Connection 3
/* Leave the above line to easily see that this query window
belongs to Connection 3. */
USE TestDB;
--7
SELECT
resource_type
,request_mode
,request_status
FROM sys.dm_tran_locks
WHERE resource_database_id = DB_ID('TestDB')
AND request_mode IN ('S', 'X')
AND resource_type <> 'DATABASE';
--8
SELECT * FROM sys.dm_tran_version_store
WHERE database_id = DB_ID('TestDB');