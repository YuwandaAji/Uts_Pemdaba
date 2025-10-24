SELECT klien.nama_klien
FROM klien
WHERE nik IN (
	SELECT nik
	FROM penagihan
	WHERE status_penagihan = 'Belum Lunas'
);