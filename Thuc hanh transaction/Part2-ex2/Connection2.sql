--5
--Connection 2
/* Leave the above line to easily see that this query window
belongs to Connection 2. */
USE TestDB;
GO
--6
SELECT SUM(Amount) AS BalanceBeforeWithdrawal
FROM Test.AccountTransactions
WHERE AccountNumber = 1001;
GO
EXEC Test.spAccountWithdraw @AccountNumber = 1001,
@AmountToWithdraw = 2000;