SELECT
    Trybefy.users.full_name AS "Pessoa usuária",
    COUNT(
        Trybefy.artists_followers.artist_id
    ) AS "Artistas que segue"
FROM users
    JOIN Trybefy.artists_followers ON users.id = Trybefy.artists_followers.user_id
GROUP BY
    Trybefy.users.full_name
ORDER BY
    Trybefy.users.full_name ASC;