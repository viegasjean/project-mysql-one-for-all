SELECT
  usu.usuario,
  COUNT(rep.cancao_id) AS qtde_musicas_ouvidas,
  FORMAT(SUM(duracao_segundos / 60), 2) AS total_minutos
FROM
  SpotifyClone.reproducoes AS rep
LEFT JOIN
  SpotifyClone.usuarios AS usu
ON usu.usuario_id = rep.usuario_id
LEFT JOIN
  SpotifyClone.cancoes AS can
ON can.cancao_id = rep.cancao_id
GROUP BY usu.usuario