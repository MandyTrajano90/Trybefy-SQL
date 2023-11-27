SELECT
    u.full_name AS 'Nome completo',
    u.email AS 'E-mail',
    p.name AS 'Plano'
FROM users AS u
    INNER JOIN plans AS p ON u.plan_id = p.id
ORDER BY u.full_name;