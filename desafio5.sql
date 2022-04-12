SELECT
  can.cancao,
  COUNT(rep.cancao_id) AS reproducoes
FROM
  SpotifyClone.reproducoes AS rep
LEFT JOIN
  SpotifyClone.cancoes AS can
  ON can.cancao_id = rep.cancao_id
GROUP BY can.cancao_id
ORDER BY reproducoes DESC, can.cancao
LIMIT 2