IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'students')
    CREATE TABLE students
    (
        id INT PRIMARY KEY,
        name varchar (30),
        surname varchar (30)
    )