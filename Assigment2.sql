--Tạo bảng không sử dụng Index, dùng clustered index và dùng non clustered index.
Select * INTO dbo.DimReseller_NoIndex FROM dbo.DimReseller;
Select * INTO dbo.DimReseller_ClusteredIndex FROM dbo.DimReseller;
Select * INTO dbo.DimReseller_NonClusteredIndex FROM dbo.DimReseller;
--Tạo index
CREATE INDEX Idx_DimReseller_ResellerAlternateKey ON dbo.DimReseller_NonClusteredIndex(ResellerAlternateKey);
CREATE CLUSTERED INDEX Idx_DimReseller_ResellerAlternateKey ON dbo.DimReseller_ClusteredIndex(ResellerAlternateKey);
--Câu lệnh chạy để so sánh:
SELECT * FROM dbo.DimReseller_NoIndex WHERE ResellerAlternateKey='AW00000174';
SELECT * FROM dbo.DimReseller_ClusteredIndex WHERE ResellerAlternateKey='AW00000174';
SELECT * FROM dbo.DimReseller_NonClusteredIndex WHERE ResellerAlternateKey='AW00000174';
