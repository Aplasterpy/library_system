USE lib_sys;
SELECT * FROM book_details;
SELECT * FROM student;
SELECT * FROM available_book;

/*--------------for student-----------------*/
CREATE PROCEDURE stu_data
AS
SELECT BD.book_id, BD.book_name, BD.book_authors, BD.book_publisers, BD.book_edition, AB.book_available 
FROM book_details AS BD, available_book AS AB
WHERE BD.book_id = AB.book_id
GO;

CALL stu_data;

/*--------------for Admin-----------------*/
CREATE PROCEDURE admin_data
AS
SELECT BD.book_id, BD.book_name, ST.student_id, ST.student_name, ST.email, ST.book_issue, ST.book_return, AB.book_available
FROM book_details AS BD, student AS ST, available_book AS AB
WHERE
BD.book_id = AB.book_id AND ST.student_id = AB.student_id
GO;
