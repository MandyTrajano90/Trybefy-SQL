SELECT
    artists.name AS "Artista",
    COUNT(followers.id) AS "Total de seguidores"
FROM artists
    JOIN artists_followers ON artists.id = artists_followers.artist_id
    JOIN users AS followers ON artists_followers.user_id = followers.id
GROUP BY artists.name
HAVING COUNT(followers.id) < 5
ORDER BY artists.name ASC;