/* Selecting Database to Use */
USE salesdb;

-- Question one
/* Creating a ProductDetail table achieving 1NF */
CREATE TABLE ProductDetail (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

/* Inserting data that each row represents a single product for an order */
INSERT INTO ProductDetail (OrderID, CustomerName, Product)
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');


-- Question two
/* Table for customer/order info */
CREATE TABLE Orders1 (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

/* Table for order details (product-level info) */
CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders1(OrderID)
);

/* Insert data into Orders */
INSERT INTO Orders1 (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

/* Insert data into OrderItems */
INSERT INTO OrderItems (OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

