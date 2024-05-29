IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'students')
    CREATE TABLE students
    (
        id INT PRIMARY KEY,
        name varchar (100),
        surname varchar (100)
    )