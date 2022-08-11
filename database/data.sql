CREATE DATABASE lib_sys;
USE lib_sys;

CREATE TABLE book_details
(
book_id INT PRIMARY KEY,
book_name VARCHAR(255),
book_authors VARCHAR(255),
book_publisers VARCHAR(255),
book_edition VARCHAR(3)
);

SELECT * FROM book_details;
/*-------------------------------------*/
CREATE TABLE student
(
student_id INT PRIMARY KEY,
student_name VARCHAR(255),
email VARCHAR(255),
book_issue DATE,
book_return DATE,
book_id INT,
book_name VARCHAR(255),
FOREIGN KEY (book_id) REFERENCES book_details(book_id)
);

SELECT * FROM student;
/*-------------------------------------*/
CREATE TABLE available_book
(
book_id INT,
book_name VARCHAR(255),
student_id INT,
student_name VARCHAR(255),
book_available ENUM("Yes", "No"),
FOREIGN KEY (student_id) REFERENCES student(student_id),
FOREIGN KEY (book_id) REFERENCES student(book_id)
);

SELECT *  FROM available_book;
/*-------------------------------------*/









