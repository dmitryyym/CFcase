SELECT  s.id AS [Номер студента],
        s.name AS Имя, 
        s.surname AS Фамилия, 
        s.examMark AS Балл, 
        n.name AS Направление,
        CASE 
            WHEN s.examMark > n.minMark THEN 'Да'
            WHEN s.examMark < n.minMark THEN 'Нет'
            ELSE NULL
        END AS Зачислен
FROM 
    students s
INNER JOIN 
    napr n ON s.naprID = n.id;