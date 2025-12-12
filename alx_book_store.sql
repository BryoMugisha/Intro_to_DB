CREATE DATABASE IF NOT EXISTS alx_book_store; 
USE alx_book_store;

CREATE TABLE books ( book_id INT AUTO_INCREMENT PRIMARY KEY, 
title VARCHAR(130) NOT NULL, 
FOREIGN KEY (author_id) REFERENCES authors(author_id) ,
price FLOAT, publication_date DATE );

CREATE TABLE authors ( author_id INT AUTO_INCREMENT
PRIMARY KEY, author_name VARCHAR(215) NOT NULL );


CREATE TABLE customers ( customer_id INT
PRIMARY KEY, customer_name VARCHAR(215) NOT NULL, email
VARCHAR(215), address TEXT );


CREATE TABLE orders ( order_id INT PRIMARY KEY,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
order_date DATE);


CREATE TABLE order_Details ( orderdetailid INT PRIMARY KEY,
FOREIGN KEY (order_id) REFERENCES orders (order_id) ,
FOREIGN KEY (book_id) REFERENCES books(book_id) , quantity DOUBLE);
