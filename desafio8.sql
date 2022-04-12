SELECT
	art.artista,
 	alb.album
FROM
	SpotifyClone.albuns alb
JOIN
	SpotifyClone.artistas art
    ON alb.artista_id = art.artista_id
WHERE
	art.artista = "Walter Phoenix";