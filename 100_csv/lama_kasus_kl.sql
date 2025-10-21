SELECT kl.nik, kl.nama_klien, (
	SELECT (ks.tgl_selesai - ks.tgl_mulai)
	FROM kasus AS ks
	WHERE kl.nik = ks.nik AND ks.status_kasus = 'Selesai'
) AS lama_kasus
FROM klien AS kl
WHERE EXISTS ( 
	SELECT * 
	FROM kasus AS ks
	WHERE kl.nik = ks.nik AND ks.status_kasus = 'Selesai')
ORDER BY lama_kasus DESC;

