SELECT
    p.name AS 'Plano',
    COUNT(u.full_name) AS 'Quantidade de usuários'
FROM plans AS p
    INNER JOIN users AS u ON p.id = u.plan_id
GROUP BY p.name;