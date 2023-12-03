create procedure summary_order_status @StatusID int as 
begin
	select 
		ft.OrderID,
		dc.CustomerName,
		dp.ProductName,
		ft.quantity,
		ds.StatusOrder
	from
		FactsTable as ft
	join
		DimCustomer as dc
		on ft.CustomerID = dc.CustomerID
	join
		DimProduct as dp
		on ft.ProductID = dp.ProductID
	join
		DimStatusOrder as ds
		on ft.StatusID = ds.StatusID
	where ft.StatusID = @StatusID
end
;
exec summary_order_status @StatusID = 2