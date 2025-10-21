SELECT p.pengacara_id, p.nama_pengacara, (
	SELECT COUNT (k.pengacara_id)
	FROM kasus AS k
	WHERE k.pengacara_id = p.pengacara_id
) AS jumlah
FROM pengacara AS p
ORDER BY jumlah DESC;

