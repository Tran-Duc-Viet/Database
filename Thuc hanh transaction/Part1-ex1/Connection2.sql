--3
SELECT @@SPID;
GO
USE TestDB;
--8
-- Connection 2
BEGIN TRAN;
UPDATE Test.TestTable SET Col2 = Col2 + 1
WHERE Col1 = 1;
--11
--Connection 2
COMMIT TRAN;