IF NOT EXISTS (
    SELECT * 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'napr' 
    AND (COLUMN_NAME = 'recruitmentFinished') OR (COLUMN_NAME = 'spotsTotal')
)
BEGIN
    ALTER TABLE napr ADD recruitmentFinished BIT
    ALTER TABLE napr ADD spotsTotal INT
END