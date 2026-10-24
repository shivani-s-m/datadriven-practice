SELECT LOWER(err_type), sum(count) as occurences
FROM err_tracks
GROUP BY LOWER(err_type)
ORDER BY occurences DESC
