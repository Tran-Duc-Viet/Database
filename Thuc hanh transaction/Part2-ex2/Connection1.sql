--4
--Connection 1
/* Leave the above line to easily see that this query window
belongs to Connection 1. */
USE TestDB;
GO
--Reset/generate the account data
EXEC Test.spAccountReset;

--6
SELECT SUM(Amount) AS BalanceBeforeWithdrawal
FROM Test.AccountTransactions
WHERE AccountNumber = 1001;
GO
EXEC Test.spAccountWithdraw @AccountNumber = 1001,
@AmountToWithdraw = 2000;