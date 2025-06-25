-- Create the database
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Use the newly created database
USE alx_book_store;

-- Create the Authors table
CREATE TABLE Authors (COMMENT
     author_id INT AUTO_INCREMENT PRIMARY KEY,
     author_name VARCHAR(215) NOT NULL,
);

-- Create the Books table
CREATE TABLE Books (COMMENT
     book_id INT AUTOINCREMENT PRIMARY KEY,
     title VARCHAR(130),
     author_id INT,
     price DOUBLE,
     publication_date DATE,
     FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create the Customers table
CREATE TABLE Customers (COMMENT
      customer_id INT AUTOINCREMENT PRIMARY KEY,
      customer_name VARCHAR(215),
      email VARCHAR(215),
      address TEXT
);

-- Create the Orders table
CREATE TABLE Orders (COMMENT
      order_id INT AUTOINCREMENT PRIMARY KEY,
      customer_id INT,
      order_date DATE,
      FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create the Order_details table
CREATE TABLE Order_Details (COMMENT
      orderdetailid INT AUTOINCREMENT PRIMARY KEY,
      order_id INT,
      book_id INT,
      quantity DOUBLE,
      FOREIGN KEY (order_id) REFERENCES Orders(order_id),
      FOREIGN KEY (book_id) REFERENCES Books(book_id)
);