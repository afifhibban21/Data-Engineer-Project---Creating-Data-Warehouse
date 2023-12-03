CREATE TABLE DimCustomer
(
	CustomerID INT PRIMARY KEY,
	CustomerName VARCHAR(50),
	Age INT,
	Gender VARCHAR(6),
	City VARCHAR(30),
	NoHP VARCHAR(15)
);

CREATE TABLE DimProduct
(
	ProductID INT PRIMARY KEY,
	ProductName VARCHAR(30),
	ProductCategory VARCHAR(30),
	ProductUnitPrice INT
);

CREATE TABLE DimStatusOrder
(
	StatusID INT PRIMARY KEY,
	StatusOrder VARCHAR(30),
	StatusOrderDesc VARCHAR(50)
)

CREATE TABLE FactSales
(
	OrderID INT PRIMARY KEY,
	CustomerID INT FOREIGN KEY REFERENCES DimCustomer (CustomerID),
	ProductID INT FOREIGN KEY REFERENCES DimProduct (ProductID),
	Quantity INT,
	Amount INT,
	StatusID INT FOREIGN KEY REFERENCES DimStatusOrder (StatusID),
	OrderDate DATE
);