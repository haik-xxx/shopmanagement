-- Create the Customers table
-- CREATE TABLE Customers (
--     CustomerID INT PRIMARY KEY NOT NULL,
--     FirstName VARCHAR(50) NOT NULL,
--     LastName VARCHAR(50) NOT NULL,
--     Email VARCHAR(100) NOT NULL,
--     Phone VARCHAR(15) NOT NULL,
--     Address VARCHAR(255) NOT NULL,
--     City VARCHAR(100) NOT NULL,
--     State VARCHAR(50) NOT NULL,
--     ZipCode VARCHAR(10) NOT NULL
-- );

-- Create the Categories table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY NOT NULL,
    CategoryName VARCHAR(100) NOT NULL,
    Description TEXT NOT NULL
);

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY NOT NULL,
    ProductName VARCHAR(100) NOT NULL,
    Description TEXT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL,
    CategoryID INT NOT NULL,
    FOREIGN KEY (CategoryID) 
	REFERENCES Categories(CategoryID)
);

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY NOT NULL,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CustomerID) 
	REFERENCES Customers(CustomerID)
);

-- Create the OrderDetails table
EATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY NOT NULL,
    OrderID INT NOT NULL,
    ProductID INT NOT CRNULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
