SELECT a.staf_id, a.nama_staf, (
	SELECT COUNT (k.staf_id)
	FROM kasus AS k
	WHERE k.staf_id = a.staf_id
) AS jumlah
FROM staf_administrasi AS a
ORDER BY jumlah ASC;