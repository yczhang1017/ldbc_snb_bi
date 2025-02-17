SELECT date_trunc('day', creationDay) AS 'date:DATE'
FROM (
    SELECT creationDay
    FROM creationDayNumMessages
    ORDER BY creationDay ASC
    LIMIT 30
)
ORDER BY md5(creationDay)
