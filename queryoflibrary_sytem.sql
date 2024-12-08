
    /*CREATE DATABASE newLibraryDB;
    CREATE TABLE Books (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Title NVARCHAR(100),
        Author NVARCHAR(100),
        Price DECIMAL(10, 2),
        Stock INT
    );

INSERT INTO Books (Title, Author, Price, Stock)
VALUES 
('The Catcher in the Rye', 'J.D. Salinger', 29.99, 15),
('To Kill a Mockingbird', 'Harper Lee', 24.99, 10),
('1984', 'George Orwell', 19.99, 20);

UPDATE Books 
SET Stock=8
WHERE Title='1984'

DELETE FROM Books 
WHERE Title='The Catcher in the Rye'

ALTER TABLE Books
ADD Genre NVARCHAR(50);*/

SELECT * FROM Books
WHERE Price < 20;







