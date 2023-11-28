SELECT
    Trybefy.users.full_name AS "Nome",
    COUNT(*) AS "Quantidade de músicas reproduzidas"
FROM users
    JOIN history_play_songs ON users.id = history_play_songs.user_id
GROUP BY
    Trybefy.users.full_name
ORDER BY
    COUNT(history_play_songs.id) DESC,
    Trybefy.users.full_name ASC;