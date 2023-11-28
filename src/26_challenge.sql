SELECT
    artists.name AS "Artista",
    COUNT(songs.id) AS "Quantidade de músicas reproduzidas"
FROM artists
    JOIN albums ON artists.id = albums.artist_id
    JOIN songs ON albums.id = songs.album_id
GROUP BY artists.name
HAVING COUNT(songs.id) > 10
ORDER BY artists.name ASC;