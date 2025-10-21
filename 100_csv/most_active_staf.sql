SELECT s.staf_id, s.nama_staf, s.gender_staf
FROM staf_administrasi AS s
WHERE s.staf_id IN (
	SELECT k.staf_id
	FROM kasus AS k
	GROUP BY k.staf_id
	ORDER BY COUNT (k.staf_id) DESC
	LIMIT 5
);



