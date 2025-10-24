SELECT k.nik, k.nama_klien,(
	SELECT SUM (p.biaya_layanan_hukum + p.biaya_admin + p.biaya_pendaftaranpgd + p.biaya_salinanpts)
	FROM penagihan AS p
	WHERE k.nik = p.nik AND p.status_penagihan = 'Lunas'
) AS jumlah_tagihan
FROM klien AS k
WHERE EXISTS (
	SELECT *
	FROM penagihan AS p
	WHERE k.nik = p.nik AND p.status_penagihan = 'Lunas'
)
ORDER BY jumlah_tagihan DESC;