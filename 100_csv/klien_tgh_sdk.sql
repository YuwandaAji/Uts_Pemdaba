SELECT k.nik, k.nama_klien, COALESCE (
	(SELECT SUM (p.biaya_layanan_hukum + p.biaya_admin + p.biaya_pendaftaranpgd + p.biaya_salinanpts)
	FROM penagihan AS p
	WHERE k.nik = p.nik AND p.status_penagihan = 'Lunas'
	),0
) AS jumlah_tagihan
FROM klien AS k
ORDER BY jumlah_tagihan ASC;