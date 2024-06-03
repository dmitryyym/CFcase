IF NOT EXISTS (
    SELECT * 
    FROM students 
    WHERE id IN (1, 2, 3)
)
BEGIN
    INSERT INTO students 
    VALUES  (1, 'Иван', 'Бунша', 220, 'История'), 
            (2, 'Остап', 'Бендер', 170, 'Право'), 
            (3, 'Александр', 'Тимофеев', 300, 'Физика')
END