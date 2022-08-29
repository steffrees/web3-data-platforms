SELECT
  t.project,
  t.version,
  date_part('year', t.block_time) AS year,
  COUNT(*) AS swaps
FROM
  dex.trades AS t
WHERE
  t.project = 'Uniswap'
GROUP BY
  t.project,
  t.version,
  date_part('year', t.block_time)
ORDER BY
  t.project ASC,
  t.version ASC,
  year ASC