IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'napr')
    CREATE TABLE napr
    (
        id INT PRIMARY KEY,
        name VARCHAR (100),
        minMark INT
    )