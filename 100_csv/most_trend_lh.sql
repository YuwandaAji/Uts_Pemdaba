SELECT l.jenis_lh, (
	SELECT COUNT (p.lh_id)
	FROM penagihan AS p
	WHERE p.lh_id = l.lh_id
) AS jumlah
FROM layanan_hukum AS l
ORDER BY jumlah DESC;