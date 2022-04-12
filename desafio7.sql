SELECT
	art.artista,
  alb.album,
  COUNT(seg.usuario_id) AS seguidores
FROM
	SpotifyClone.seguindo seg
JOIN
	SpotifyClone.albuns alb
    ON seg.artista_id = alb.artista_id
LEFT JOIN
	SpotifyClone.artistas art
    ON seg.artista_id = art.artista_id
GROUP BY seg.artista_id, alb.album
ORDER BY seguidores DESC, art.artista, alb.album;