SELECT
    age,
    COUNT(*) AS cnt_customers
FROM (
    SELECT
        TIMESTAMPDIFF(YEAR, birth_dt, CURDATE()) AS age
    FROM
        cd_customers
    WHERE
        valid_to_dttm = '5999-01-01'
    ) AS ages
WHERE
    age BETWEEN 15 AND 80
GROUP BY
    age
ORDER BY
    age DESC;