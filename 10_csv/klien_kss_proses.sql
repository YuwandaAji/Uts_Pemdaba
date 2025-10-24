SELECT k.nik, k.nama_klien
FROM klien AS k
WHERE k.nik IN (
	SELECT ks.nik
	FROM kasus AS ks
	WHERE ks.status_kasus = 'Proses'
);