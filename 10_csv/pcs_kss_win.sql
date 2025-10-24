SELECT p.pengacara_id, p.nama_pengacara, p.spesialisasi
FROM pengacara AS p
WHERE p.pengacara_id IN (
	SELECT k.pengacara_id
	FROM kasus AS k
	WHERE k.status_kasus = 'Selesai' AND k.hasil = 'Menang'
);