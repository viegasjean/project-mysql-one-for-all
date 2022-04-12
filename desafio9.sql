SELECT
    COUNT(cancao_id) AS quantidade_musicas_no_historico
FROM
	SpotifyClone.reproducoes rep
JOIN
	SpotifyClone.usuarios usu
    ON usu.usuario_id = rep.usuario_id
WHERE usuario = "Bill"
GROUP BY usuario;