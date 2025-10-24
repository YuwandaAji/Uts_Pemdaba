--
-- PostgreSQL database dump
--

\restrict SjISaguMUJ3SpyWA5k3hSiXuKTGRRBvyfRa3z52bKrArPvecoRzG6q0jC6pi1eW

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-24 21:22:13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4889 (class 1262 OID 24807)
-- Name: uts_100; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE uts_100 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';


ALTER DATABASE uts_100 OWNER TO postgres;

\unrestrict SjISaguMUJ3SpyWA5k3hSiXuKTGRRBvyfRa3z52bKrArPvecoRzG6q0jC6pi1eW
\connect uts_100
\restrict SjISaguMUJ3SpyWA5k3hSiXuKTGRRBvyfRa3z52bKrArPvecoRzG6q0jC6pi1eW

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 24843)
-- Name: dokumen_hukum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dokumen_hukum (
    dokumen_id integer NOT NULL,
    nama_dokumen text,
    pengacara_id integer,
    kasus_id integer,
    tanggal_upload date,
    staf_id integer,
    url_doc text
);


ALTER TABLE public.dokumen_hukum OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24835)
-- Name: kasus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kasus (
    kasus_id integer NOT NULL,
    perkara_kasus text,
    deskripsi_kasus text,
    nik numeric,
    pengacara_id integer,
    staf_id integer,
    tgl_daftar date,
    tgl_mulai date,
    tgl_selesai date,
    hasil text,
    status_kasus text
);


ALTER TABLE public.kasus OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24828)
-- Name: klien; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.klien (
    nik numeric NOT NULL,
    nama_klien text,
    tgl_daftar date,
    no_tlp_k numeric,
    email_k text,
    alamat_k text,
    gender_k text,
    tmpt_tgl_lhr text,
    tgl_lhr_k date,
    jenis_lh integer
);


ALTER TABLE public.klien OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24857)
-- Name: layanan_hukum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.layanan_hukum (
    lh_id integer NOT NULL,
    jenis_lh text,
    harga_lh numeric
);


ALTER TABLE public.layanan_hukum OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24850)
-- Name: penagihan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.penagihan (
    penagihan_id integer NOT NULL,
    nik numeric,
    lh_id integer,
    kasus_id integer,
    staf_id integer,
    tgl_penagihan date,
    status_penagihan text,
    tgl_bayar date,
    biaya_layanan_hukum numeric,
    biaya_admin numeric,
    biaya_pendaftaranpgd numeric,
    biaya_salinanpts numeric
);


ALTER TABLE public.penagihan OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24808)
-- Name: pengacara; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pengacara (
    pengacara_id integer NOT NULL,
    nama_pengacara text,
    tgl_bgb_pca date,
    spesialisasi text,
    no_tlp_pca numeric,
    alamat_pengacara text,
    email_pengacara text,
    tempat_lahir_pca text,
    tgl_lhr_pca date,
    gender_pengacara text
);


ALTER TABLE public.pengacara OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24821)
-- Name: staf_administrasi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staf_administrasi (
    staf_id integer NOT NULL,
    nama_staf text,
    tgl_bgb_staf date,
    no_tlp_staf numeric,
    email_staf text,
    tgl_lhr_staf date,
    gender_staf text,
    tp_lhr_staf text,
    alamat_staf text
);


ALTER TABLE public.staf_administrasi OWNER TO postgres;

--
-- TOC entry 4881 (class 0 OID 24843)
-- Dependencies: 221
-- Data for Name: dokumen_hukum; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dokumen_hukum (dokumen_id, nama_dokumen, pengacara_id, kasus_id, tanggal_upload, staf_id, url_doc) FROM stdin;
1	Gugatan Pembagian Waris & SKW	3	1	2025-06-16	1	http://doc.hukum.com/kasus001_GW
2	Laporan Polisi KDRT & Visum	2	2	2025-06-20	2	http://doc.hukum.com/kasus002_LPV
3	Akta Jual Beli Tanah (Sengketa)	56	3	2025-06-29	3	http://doc.hukum.com/kasus003_AJB
4	Surat Gugatan Properti & BAP	4	4	2025-07-02	4	http://doc.hukum.com/kasus004_SG
5	Akta Pendirian PT & AD/ART	1	5	2025-06-06	5	http://doc.hukum.com/kasus005_APT
6	Formulir Pendaftaran Merek	5	6	2025-06-25	6	http://doc.hukum.com/kasus006_FPM
7	Laporan Hasil Audit Hukum Awal	7	7	2025-07-05	7	http://doc.hukum.com/kasus007_LHA
8	Draft Perjanjian Properti Final	4	8	2025-07-10	8	http://doc.hukum.com/kasus008_DPF
9	Akta Perdamaian Mediasi	9	9	2025-09-16	9	http://doc.hukum.com/kasus009_APM
10	Bukti Penerbitan SIUP	13	10	2025-07-02	10	http://doc.hukum.com/kasus010_BSIUP
11	BAP Tersangka KDRT	2	11	2025-07-15	11	http://doc.hukum.com/kasus011_BAP
12	Gugatan Perceraian & Akta Nikah	3	12	2025-07-18	12	http://doc.hukum.com/kasus012_GPN
13	Surat Peringatan (SP) Kredit Macet	9	13	2025-08-05	13	http://doc.hukum.com/kasus013_SPK
14	Putusan PHI & Risalah Mediasi	6	14	2026-01-25	14	http://doc.hukum.com/kasus014_PPRM
15	Surat Keberatan Pajak & Bukti Pembayaran	8	15	2025-09-10	15	http://doc.hukum.com/kasus015_SKP
16	Dokumen Deskripsi Paten Sederhana	5	16	2025-09-12	16	http://doc.hukum.com/kasus016_DPS
17	Kontrak Kerjasama Internasional Final	13	17	2025-08-25	17	http://doc.hukum.com/kasus017_KKI
18	Permohonan PKPU ke Pengadilan	10	18	2025-09-15	18	http://doc.hukum.com/kasus018_PPK
19	Prospektus Obligasi & Izin OJK	14	19	2025-09-28	19	http://doc.hukum.com/kasus019_PO
20	Laporan Keuangan Restrukturisasi	1	20	2025-10-05	20	http://doc.hukum.com/kasus020_LKR
21	Permohonan Adopsi & Dokumen Pendukung	16	21	2025-08-12	21	http://doc.hukum.com/kasus021_PAD
22	Rancangan Akta Pembubaran & Laporan Likuidator	17	22	2025-08-15	22	http://doc.hukum.com/kasus022_RPL
23	Bukti Digital Forensik (Penyebaran Data)	18	23	2025-09-05	23	http://doc.hukum.com/kasus023_BDF
24	Gugatan Wanprestasi & Bukti Kontrak	13	24	2025-09-20	24	http://doc.hukum.com/kasus024_GWBK
25	Dokumen Amdal (Analisis Dampak Lingkungan)	7	25	2025-10-15	25	http://doc.hukum.com/kasus025_DA
26	Sertifikat Hak Cipta (SHC) Klien	5	26	2025-10-10	26	http://doc.hukum.com/kasus026_SHC
27	BAP Tingkat Penyidikan Narkotika	15	27	2025-11-05	27	http://doc.hukum.com/kasus027_BAPN
28	Surat Pernyataan Kesepakatan Waris (SKW)	3	28	2025-08-15	28	http://doc.hukum.com/kasus028_SKW
29	Hasil Konsultasi Harta Bersama Syariah	26	29	2025-06-30	29	http://doc.hukum.com/kasus029_HKS
30	Hasil Verifikasi Sertifikat Tanah	4	30	2025-07-15	30	http://doc.hukum.com/kasus030_HVT
31	Gugatan Sengketa Tanah PN	27	31	2025-10-25	31	http://doc.hukum.com/kasus031_GST
32	Surat Tuntutan Klaim Asuransi	28	32	2025-11-15	32	http://doc.hukum.com/kasus032_STK
33	Laporan Bulanan Legal Retainer (Juli)	29	33	2025-08-03	33	http://doc.hukum.com/kasus033_LBL
34	Akta Mediasi Konsumen & Bukti Pembelian	19	34	2025-09-05	34	http://doc.hukum.com/kasus034_AMK
35	Dokumen Administrasi Tender Proyek	31	35	2025-10-15	35	http://doc.hukum.com/kasus035_DAT
36	Formulir Madrid Protocol Merek	32	36	2025-10-25	36	http://doc.hukum.com/kasus036_FMM
37	Gugatan PHI & Surat Panggilan	33	37	2025-11-10	37	http://doc.hukum.com/kasus037_GPSP
38	BAP Saksi Korupsi Klien	34	38	2025-12-10	38	http://doc.hukum.com/kasus038_BAPS
39	Legal Opinion Final (Investasi)	35	39	2025-08-15	39	http://doc.hukum.com/kasus039_LOF
40	Putusan Pembatalan Perkawinan	36	40	2026-03-05	40	http://doc.hukum.com/kasus040_PPP
41	Laporan Polisi Penipuan Online	37	41	2025-11-15	41	http://doc.hukum.com/kasus041_LPPO
42	Izin Prinsip PMA (Final)	38	42	2026-01-05	42	http://doc.hukum.com/kasus042_IPMAF
43	Gugatan Sengketa Paten & Bukti Pelanggaran	39	43	2025-11-30	43	http://doc.hukum.com/kasus043_GSP
44	AD/ART Perusahaan Baru (Final)	40	44	2025-08-28	44	http://doc.hukum.com/kasus044_ADART
45	Izin Usaha Pertambangan (IUP)	41	45	2025-12-10	45	http://doc.hukum.com/kasus045_IUP
46	Sertifikat Indikasi Geografis (IG)	42	46	2026-04-05	46	http://doc.hukum.com/kasus046_SIG
47	Gugatan Class Action & Daftar Anggota	43	47	2025-12-15	47	http://doc.hukum.com/kasus047_GCA
48	Laporan Due Diligence Lanjutan	44	48	2025-11-05	48	http://doc.hukum.com/kasus048_LDR
49	BAP Klien ITE (Pencemaran)	45	49	2025-12-20	49	http://doc.hukum.com/kasus049_BAPITE
50	Hasil Konsultasi Waris Lintas Negara	46	50	2025-07-20	50	http://doc.hukum.com/kasus050_HCWLN
51	Perjanjian Negosiasi Kontrak Non-Litigasi	13	51	2025-08-25	51	http://doc.hukum.com/kasus051_PNK
52	Surat Dakwaan & Pembelaan Penganiayaan	47	52	2026-01-05	52	http://doc.hukum.com/kasus052_SDPP
53	Akta Pendirian Yayasan & SK Kemenkumham	48	53	2025-09-10	53	http://doc.hukum.com/kasus053_APY
54	Dokumen TOS & Privacy Policy Final	49	54	2025-10-15	54	http://doc.hukum.com/kasus054_TOSPP
55	Kontrak Akuisisi Perusahaan Kecil	50	55	2025-12-15	55	http://doc.hukum.com/kasus055_KAP
56	Gugatan Litigasi Merek & Bukti Pelanggaran	51	56	2026-01-30	56	http://doc.hukum.com/kasus056_GLM
57	Hasil Konsultasi Regulasi Ekspor-Impor	52	57	2025-07-27	57	http://doc.hukum.com/kasus057_HCREI
58	BAP Kecelakaan Lalu Lintas & Visum	53	58	2025-11-15	58	http://doc.hukum.com/kasus058_BAPL
59	Dokumen Permohonan Harta Gono-Gini	54	59	2025-12-15	59	http://doc.hukum.com/kasus059_DPHG
60	Laporan Review Kontrak Komprehensif	55	60	2025-08-10	60	http://doc.hukum.com/kasus060_LRKK
61	Gugatan Pembatalan Akta Hibah	56	61	2026-02-10	61	http://doc.hukum.com/kasus061_GPAH
62	BAP Klien Penyelundupan	57	62	2026-01-25	62	http://doc.hukum.com/kasus062_BAPK
63	Sertifikat Desain Industri (SDI)	58	63	2026-05-05	63	http://doc.hukum.com/kasus063_SDI
64	Akta Kesepakatan Mediasi Konstruksi	59	64	2026-06-15	64	http://doc.hukum.com/kasus064_AKMK
65	Dokumen Perizinan Proyek Real Estat	60	65	2026-02-20	65	http://doc.hukum.com/kasus065_DPR
66	Hasil Konsultasi Malpraktik RS	61	66	2025-08-05	66	http://doc.hukum.com/kasus066_HKMR
67	Surat Kuasa & Pembelaan Gugatan Konsumen	62	67	2026-03-01	67	http://doc.hukum.com/kasus067_SKPGK
68	Dokumen Legalitas Kapal & Izin Pelabuhan	63	68	2026-03-10	68	http://doc.hukum.com/kasus068_DLK
69	Gugatan Perbuatan Melawan Hukum (PMH)	64	69	2026-03-20	69	http://doc.hukum.com/kasus069_GPMH
70	Laporan Polisi Penghinaan	65	70	2026-04-05	70	http://doc.hukum.com/kasus070_LPP
71	Hasil Konsultasi Perjanjian Pranikah Lintas Negara	66	71	2025-08-10	71	http://doc.hukum.com/kasus071_HKPPLN
72	Dokumen Sengketa Batas Konsesi	67	72	2026-04-15	72	http://doc.hukum.com/kasus072_DSBK
73	Laporan Dugaan Pelanggaran HAM	68	73	2026-05-10	73	http://doc.hukum.com/kasus073_LDPH
74	Peraturan Perusahaan (Final) & Pengesahan Disnaker	69	74	2025-11-25	74	http://doc.hukum.com/kasus074_PPF
75	Izin Operasional ESDM	70	75	2026-06-10	75	http://doc.hukum.com/kasus075_IOE
76	Permohonan Paten PCT (Internasional)	71	76	2026-06-20	76	http://doc.hukum.com/kasus076_PPCT
77	Gugatan Pengosongan Properti & Bukti Sewa	72	77	2026-07-10	77	http://doc.hukum.com/kasus077_GPP
78	Pembelaan Kasus Penggelapan Pajak	73	78	2026-07-25	78	http://doc.hukum.com/kasus078_PKPP
79	Legal Opinion M&A Final	74	79	2025-10-18	79	http://doc.hukum.com/kasus079_LOMF
80	Gugatan Hak Asuh Anak & Akta Cerai	75	80	2026-08-15	80	http://doc.hukum.com/kasus080_GHA
81	Dokumen Sengketa Pengadaan Barang/Jasa	76	81	2026-08-25	81	http://doc.hukum.com/kasus081_DSPBJ
82	Hasil Konsultasi Regulasi Laut	77	82	2025-08-21	82	http://doc.hukum.com/kasus082_HKRL
83	Gugatan Sengketa HGB & Sertifikat	78	83	2026-09-10	83	http://doc.hukum.com/kasus083_GSH
84	Dokumen Pendaftaran Rahasia Dagang	79	84	2026-09-15	84	http://doc.hukum.com/kasus084_DPRD
85	Surat Kuasa Sengketa Hak Siar	80	85	2026-10-10	85	http://doc.hukum.com/kasus085_SKS
86	BAP Klien Pidana Khusus BBM	81	86	2026-10-25	86	http://doc.hukum.com/kasus086_BAPKBBM
87	Dokumen Sengketa Waralaba & Kontrak	82	87	2026-11-10	87	http://doc.hukum.com/kasus087_DSWK
88	Laporan Kepatuhan PDP (Perlindungan Data Pribadi)	83	88	2026-12-15	88	http://doc.hukum.com/kasus088_LKPPDP
89	Hasil Konsultasi Izin Pembangunan Pabrik	84	89	2025-08-28	89	http://doc.hukum.com/kasus089_HKIPP
90	Dokumen Arbitrase Internasional (Pledoi)	85	90	2027-01-15	90	http://doc.hukum.com/kasus090_DAIP
91	Gugatan Pembatalan Kredit KPR	86	91	2027-02-25	91	http://doc.hukum.com/kasus091_GPKK
92	BAP Saksi Korupsi (Pendampingan)	87	92	2027-03-10	92	http://doc.hukum.com/kasus092_BAPKS
93	Akta Jual Beli (AJB) Properti	88	93	2025-09-25	93	http://doc.hukum.com/kasus093_AJB
94	Dokumen Legalitas Aplikasi Fintech	89	94	2027-04-10	94	http://doc.hukum.com/kasus094_DLAF
95	Gugatan Litigasi Hak Cipta Desain	90	95	2027-05-10	95	http://doc.hukum.com/kasus095_GLHCD
96	Hasil Konsultasi KITAS WNA	91	96	2025-09-04	96	http://doc.hukum.com/kasus096_HKKW
97	Dokumen Emisi Obligasi Baru	92	97	2027-06-10	97	http://doc.hukum.com/kasus097_DEOB
98	Gugatan Pembagian Harta Bersama (Sengketa)	93	98	2027-07-10	98	http://doc.hukum.com/kasus098_GPHBS
99	BAP Klien Kejahatan Perbankan	94	99	2027-08-10	99	http://doc.hukum.com/kasus099_BAPKB
100	Dokumen Wasiat & Warisan Klien	95	100	2025-11-05	100	http://doc.hukum.com/kasus100_DWWK
\.


--
-- TOC entry 4880 (class 0 OID 24835)
-- Dependencies: 220
-- Data for Name: kasus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kasus (kasus_id, perkara_kasus, deskripsi_kasus, nik, pengacara_id, staf_id, tgl_daftar, tgl_mulai, tgl_selesai, hasil, status_kasus) FROM stdin;
1	Sengketa Waris	Klien mengajukan gugatan pembagian harta warisan.	3501041203050001	3	11	2025-06-01	2025-06-15	2026-03-20	Menang	Selesai
2	Kekerasan Dalam Rumah Tangga (KDRT)	Klien sebagai korban KDRT mengajukan perlindungan dan gugatan cerai.	3501041203050002	2	12	2025-06-02	2025-06-18	2026-05-01	Menang	Selesai
3	Pembatalan Akta Notaris	Klien menggugat pembatalan akta notaris terkait jual beli fiktif.	3501041203050003	56	13	2025-06-03	2025-06-20	\N	Proses	Proses
4	Sengketa Properti (Jual Beli)	Klien menggugat pengembang karena cacat bangunan pada properti yang dibeli.	3501041203050004	4	14	2025-06-04	2025-07-01	2026-01-10	Menang	Selesai
5	Pendirian Perusahaan (PT)	Klien meminta bantuan legal untuk mendirikan PT baru.	3501041203050005	1	15	2025-06-05	2025-06-05	2025-07-15	Tidak Berlaku	Selesai
6	Pendaftaran Merek	Klien mendaftarkan merek dagang baru di DJKI.	3501041203050006	5	16	2025-06-06	2025-06-20	\N	Proses	Proses
7	Audit Hukum Awal	Klien meminta audit awal legalitas perusahaan sebelum investasi.	3501041203050007	7	17	2025-06-07	2025-07-01	2025-07-30	Tidak Berlaku	Selesai
8	Drafting Kontrak Properti	Pembuatan kontrak pembelian dan pengembangan properti skala besar.	3501041203050008	4	18	2025-06-08	2025-07-05	2025-08-10	Tidak Berlaku	Selesai
9	Mediasi Utang Piutang	Klien bersengketa dengan debitur dan memilih mediasi non-litigasi.	3501041203050009	9	19	2025-06-09	2025-07-08	2025-09-15	Menang	Selesai
10	Pengurusan SIUP	Permintaan pengurusan surat izin usaha perdagangan.	3501041203050010	13	20	2025-06-10	2025-06-15	2025-07-01	Tidak Berlaku	Selesai
11	Pendampingan Pidana (KDRT)	Klien sebagai pelaku didampingi untuk kasus KDRT.	3501041203050011	2	21	2025-06-11	2025-07-10	\N	Proses	Proses
12	Gugatan Perceraian	Klien mengajukan gugatan cerai di Pengadilan Agama.	3501041203050012	3	22	2025-06-12	2025-07-12	2026-02-28	Kalah	Selesai
13	Sengketa Kredit Bank	Klien bersengketa dengan bank terkait kredit macet.	3501041203050013	9	23	2025-06-13	2025-08-01	\N	Proses	Proses
14	Sengketa PHK Massal	Klien adalah perusahaan yang menghadapi gugatan PHK dari serikat pekerja.	3501041203050014	6	24	2025-06-14	2025-08-15	2026-01-20	Menang	Selesai
15	Gugatan Pajak Perusahaan	Klien menggugat Dirjen Pajak terkait penetapan kurang bayar pajak.	3501041203050015	8	25	2025-06-15	2025-09-01	\N	Proses	Proses
16	Pendaftaran Paten	Pendaftaran Paten Sederhana untuk penemuan baru klien.	3501041203050016	5	26	2025-06-16	2025-09-05	\N	Proses	Proses
17	Drafting Kontrak Internasional	Pembuatan kontrak kerja sama dengan mitra luar negeri.	3501041203050017	13	27	2025-06-17	2025-07-15	2025-08-20	Tidak Berlaku	Selesai
18	Pendampingan PKPU	Klien (debitur) mengajukan Permohonan PKPU.	3501041203050018	10	28	2025-06-18	2025-09-10	\N	Proses	Proses
19	Emisi Obligasi Korporasi	Klien adalah perusahaan yang akan menerbitkan obligasi.	3501041203050019	14	29	2025-06-19	2025-09-20	2026-01-30	Tidak Berlaku	Selesai
20	Restrukturisasi Utang	Klien (korporasi) melakukan restrukturisasi utang besar.	3501041203050020	1	30	2025-06-20	2025-10-01	\N	Proses	Proses
21	Permohonan Adopsi	Klien mengajukan permohonan adopsi anak secara legal.	3501041203050021	16	31	2025-06-21	2025-08-05	2026-03-01	Menang	Selesai
22	Pembubaran Perusahaan	Klien meminta bantuan untuk proses likuidasi dan pembubaran PT.	3501041203050022	17	32	2025-06-22	2025-08-10	2026-04-15	Tidak Berlaku	Selesai
23	Kasus Cyber Crime (Penyebaran Data)	Klien menjadi korban penyebaran data pribadi oleh oknum.	3501041203050023	18	33	2025-06-23	2025-09-01	\N	Proses	Proses
24	Gugatan Wanprestasi	Klien menggugat mitra bisnis karena wanprestasi kontrak.	3501041203050024	13	34	2025-06-24	2025-09-15	\N	Proses	Proses
25	Izin Lingkungan	Klien (perusahaan) mengajukan izin lingkungan untuk proyek baru.	3501041203050025	7	35	2025-06-25	2025-10-01	2026-05-01	Tidak Berlaku	Selesai
26	Pendaftaran Hak Cipta	Pendaftaran hak cipta atas karya tulis klien.	3501041203050026	5	36	2025-06-26	2025-10-10	2026-01-15	Tidak Berlaku	Selesai
27	Pembelaan Kasus Narkotika	Klien didakwa sebagai pengguna narkotika didampingi pada tingkat penyidikan.	3501041203050027	15	37	2025-06-27	2025-11-01	\N	Proses	Proses
28	Sengketa Waris Non-Litigasi	Klien meminta mediasi untuk pembagian warisan keluarga secara damai.	3501041203050028	3	38	2025-06-28	2025-08-10	2025-10-25	Menang	Selesai
29	Konsultasi Hukum Keluarga Syariah	Klien berkonsultasi mengenai harta bersama dan kewajiban pasca-cerai.	3501041203050029	26	39	2025-06-29	2025-06-29	2025-06-29	Tidak Berlaku	Selesai
30	Verifikasi Dokumen Tanah	Pengecekan legalitas sertifikat tanah sebelum transaksi.	3501041203050030	4	40	2025-06-30	2025-07-05	2025-07-25	Tidak Berlaku	Selesai
31	Gugatan Sengketa Tanah	Klien menggugat pihak lain terkait kepemilikan lahan di Pengadilan Negeri.	3501041203050031	27	41	2025-07-01	2025-10-20	\N	Proses	Proses
32	Pendampingan Hukum Asuransi	Klien menuntut klaim asuransi jiwa yang ditolak perusahaan.	3501041203050032	28	42	2025-07-02	2025-11-05	\N	Proses	Proses
33	Retainer Korporasi	Klien (perusahaan) menggunakan jasa retainer hukum bulanan.	3501041203050033	29	43	2025-07-03	2025-07-03	\N	Tidak Berlaku	Proses
34	Mediasi Sengketa Konsumen	Klien sebagai pembeli meminta mediasi atas produk cacat dari penjual.	3501041203050034	19	44	2025-07-04	2025-09-01	2025-11-15	Menang	Selesai
35	Pendampingan Tender Proyek	Klien (kontraktor) didampingi dalam proses tender proyek infrastruktur.	3501041203050035	31	45	2025-07-05	2025-10-10	2026-01-05	Tidak Berlaku	Selesai
36	Pendaftaran Merek Internasional	Klien mendaftarkan mereknya di beberapa negara melalui Madrid Protocol.	3501041203050036	32	46	2025-07-06	2025-10-20	\N	Proses	Proses
37	Sengketa Hubungan Industrial	Gugatan perselisihan upah dan pemutusan hubungan kerja.	3501041203050037	33	47	2025-07-07	2025-11-01	\N	Proses	Proses
38	Pidana Khusus Korupsi	Klien adalah saksi kunci dalam kasus tindak pidana korupsi.	3501041203050038	34	48	2025-07-08	2025-12-05	\N	Proses	Proses
39	Legal Opinion Khusus	Permintaan legal opinion mengenai risiko investasi baru.	3501041203050039	35	49	2025-07-09	2025-07-20	2025-08-15	Tidak Berlaku	Selesai
40	Gugatan Pembatalan Perkawinan	Klien mengajukan gugatan pembatalan pernikahan ke Pengadilan Agama.	3501041203050040	36	50	2025-07-10	2025-09-01	2026-03-01	Menang	Selesai
41	Kasus Penipuan Online	Klien sebagai korban penipuan melalui media sosial.	3501041203050041	37	51	2025-07-11	2025-11-10	\N	Proses	Proses
42	Pengurusan Izin PMA	Klien (investor asing) mengurus Izin Prinsip Penanaman Modal Asing.	3501041203050042	38	52	2025-07-12	2025-09-15	2026-01-01	Tidak Berlaku	Selesai
43	Sengketa HKI (Paten)	Klien menggugat pelanggaran paten yang dimilikinya.	3501041203050043	39	53	2025-07-13	2025-11-20	\N	Proses	Proses
44	Drafting AD/ART	Pembuatan dan review Anggaran Dasar dan Anggaran Rumah Tangga perusahaan.	3501041203050044	40	54	2025-07-14	2025-08-01	2025-08-25	Tidak Berlaku	Selesai
45	Hukum Pertambangan	Pendampingan perusahaan dalam perizinan dan sengketa tambang.	3501041203050045	41	55	2025-07-15	2025-12-01	\N	Proses	Proses
46	Pendaftaran Indikasi Geografis (IG)	Pendaftaran IG untuk produk khas daerah klien.	3501041203050046	42	56	2025-07-16	2025-11-15	2026-04-01	Tidak Berlaku	Selesai
47	Gugatan Class Action	Klien (perwakilan) mengajukan gugatan class action terhadap perusahaan besar.	3501041203050047	43	57	2025-07-17	2025-12-10	\N	Proses	Proses
48	Uji Tuntas Hukum Lanjut	Klien meminta due diligence tingkat lanjut untuk akuisisi perusahaan.	3501041203050048	44	58	2025-07-18	2025-08-01	2025-10-30	Tidak Berlaku	Selesai
49	Kasus ITE (Pencemaran)	Klien dilaporkan atas tuduhan pencemaran nama baik via media sosial.	3501041203050049	45	59	2025-07-19	2025-12-15	\N	Proses	Proses
50	Konsultasi Waris Lintas Negara	Konsultasi mengenai pembagian harta warisan yang melibatkan aset di luar negeri.	3501041203050050	46	60	2025-07-20	2025-07-20	2025-07-20	Tidak Berlaku	Selesai
51	Jasa Advokat Khusus	Klien meminta jasa advokat untuk negosiasi kontrak non-litigasi.	3501041203050051	13	61	2025-07-21	2025-08-20	2025-11-01	Tidak Berlaku	Selesai
52	Pidana Umum Ringan (Penganiayaan)	Klien didakwa kasus penganiayaan ringan didampingi di PN.	3501041203050052	47	62	2025-07-22	2025-12-25	2026-05-15	Menang	Selesai
53	Pendirian Yayasan	Bantuan legal untuk mendirikan yayasan sosial.	3501041203050053	48	63	2025-07-23	2025-09-01	2026-02-01	Tidak Berlaku	Selesai
54	Pembuatan TOS Website	Pembuatan Terms of Service dan Privacy Policy untuk website klien.	3501041203050054	49	64	2025-07-24	2025-08-05	2025-10-10	Tidak Berlaku	Selesai
55	Merger dan Akuisisi Kecil	Pendampingan legal dalam proses akuisisi perusahaan kecil.	3501041203050055	50	65	2025-07-25	2025-12-01	2026-04-01	Tidak Berlaku	Selesai
56	Litigasi Sengketa Merek	Gugatan atas pelanggaran merek dagang yang dilakukan pihak lain.	3501041203050056	51	66	2025-07-26	2026-01-15	\N	Proses	Proses
57	Konsultasi Hukum Internasional	Konsultasi mengenai regulasi perdagangan internasional untuk ekspor produk.	3501041203050057	52	67	2025-07-27	2025-07-27	2025-07-27	Tidak Berlaku	Selesai
58	Kasus Lalu Lintas Berat	Klien didakwa karena menyebabkan kecelakaan lalu lintas berat.	3501041203050058	53	68	2025-07-28	2025-11-10	\N	Proses	Proses
59	Pengurusan Harta Gono-Gini	Klien meminta bantuan pengurusan pembagian harta gono-gini pasca-cerai.	3501041203050059	54	69	2025-07-29	2025-12-05	2026-06-01	Menang	Selesai
60	Review Kontrak Komprehensif	Review mendalam atas kontrak kerjasama jangka panjang klien.	3501041203050060	55	70	2025-07-30	2025-08-05	2025-09-20	Tidak Berlaku	Selesai
61	Gugatan Pembatalan Akta	Klien menggugat pembatalan Akta Hibah yang dianggap cacat hukum.	3501041203050061	56	71	2025-07-31	2026-02-01	\N	Proses	Proses
62	Kasus Penyelundupan	Klien didakwa dalam kasus penyelundupan barang impor.	3501041203050062	57	72	2025-08-01	2026-01-20	\N	Proses	Proses
63	Pendaftaran Desain Industri	Pendaftaran desain industri untuk produk elektronik klien.	3501041203050063	58	73	2025-08-02	2025-12-15	2026-05-01	Tidak Berlaku	Selesai
64	Mediasi Sengketa Konstruksi	Mediasi antara klien (pemilik proyek) dengan kontraktor.	3501041203050064	59	74	2025-08-03	2026-01-25	2026-06-10	Menang	Selesai
65	Hukum Real Estat	Pendampingan klien dalam proyek pembangunan perumahan.	3501041203050065	60	75	2025-08-04	2026-02-10	\N	Proses	Proses
66	Konsultasi Hukum Kesehatan	Konsultasi rumah sakit mengenai izin operasional dan malpraktik.	3501041203050066	61	76	2025-08-05	2025-08-05	2025-08-05	Tidak Berlaku	Selesai
67	Litigasi Konsumen (Perusahaan)	Klien (perusahaan) dibela atas gugatan konsumen.	3501041203050067	62	77	2025-08-06	2026-02-20	\N	Proses	Proses
68	Hukum Maritim	Pendampingan legalitas kapal dan sengketa pelabuhan.	3501041203050068	63	78	2025-08-07	2026-03-01	\N	Proses	Proses
69	Gugatan PMH Tanah	Klien menggugat pihak lain atas Perbuatan Melawan Hukum terkait batas tanah.	3501041203050069	64	79	2025-08-08	2026-03-15	\N	Proses	Proses
70	Kasus Penghinaan/Fitnah	Klien melaporkan pihak lain atas tuduhan penghinaan.	3501041203050070	65	80	2025-08-09	2026-04-01	\N	Proses	Proses
71	Konsultasi Perkawinan Campuran	Konsultasi mengenai perjanjian pranikah dan kepemilikan aset lintas negara.	3501041203050071	66	81	2025-08-10	2025-08-10	2025-08-10	Tidak Berlaku	Selesai
72	Sengketa Batas Wilayah	Pendampingan perusahaan dalam sengketa batas wilayah konsesi pertambangan.	3501041203050072	67	82	2025-08-11	2026-04-10	\N	Proses	Proses
73	Pendampingan Hukum HAM	Klien meminta pendampingan terkait dugaan pelanggaran HAM oleh aparat.	3501041203050073	68	83	2025-08-12	2026-05-01	\N	Proses	Proses
74	Penyusunan Peraturan Perusahaan	Pembuatan dan pengesahan Peraturan Perusahaan (PP) klien.	3501041203050074	69	84	2025-08-13	2025-09-01	2025-11-20	Tidak Berlaku	Selesai
75	Hukum ESDM	Pendampingan legalitas izin operasional sektor energi dan sumber daya mineral.	3501041203050075	70	85	2025-08-14	2026-06-01	\N	Proses	Proses
76	Pendaftaran Paten PCT	Pendaftaran paten di tingkat internasional melalui PCT.	3501041203050076	71	86	2025-08-15	2026-06-15	\N	Proses	Proses
77	Sengketa Sewa-Menyewa	Klien bersengketa dengan penyewa properti terkait tunggakan dan pengosongan.	3501041203050077	72	87	2025-08-16	2026-07-01	\N	Proses	Proses
78	Pembelaan Kasus Pajak	Klien didakwa melakukan penggelapan pajak perusahaan.	3501041203050078	73	88	2025-08-17	2026-07-20	\N	Proses	Proses
79	Legal Opinion M&A	Permintaan legal opinion khusus sebelum proses merger perusahaan multinasional.	3501041203050079	74	89	2025-08-18	2025-09-01	2025-10-15	Tidak Berlaku	Selesai
80	Gugatan Hak Asuh Anak	Klien mengajukan gugatan hak asuh anak pasca-perceraian.	3501041203050080	75	90	2025-08-19	2026-08-10	\N	Proses	Proses
81	Hukum Pengadaan Barang/Jasa	Pendampingan klien dalam sengketa pengadaan barang dan jasa pemerintah.	3501041203050081	76	91	2025-08-20	2026-08-20	\N	Proses	Proses
82	Konsultasi Transportasi	Konsultasi mengenai regulasi ekspor-impor via jalur laut.	3501041203050082	77	92	2025-08-21	2025-08-21	2025-08-21	Tidak Berlaku	Selesai
83	Sengketa HGB	Klien bersengketa dengan pihak lain mengenai status Hak Guna Bangunan.	3501041203050083	78	93	2025-08-22	2026-09-01	\N	Proses	Proses
84	Pendaftaran Rahasia Dagang	Pendaftaran rahasia dagang untuk formula bisnis klien.	3501041203050084	79	94	2025-08-23	2026-09-10	\N	Proses	Proses
85	Hukum Media	Pendampingan klien (perusahaan media) dalam sengketa hak siar.	3501041203050085	80	95	2025-08-24	2026-10-01	\N	Proses	Proses
86	Pidana Khusus (Migas)	Klien didakwa kasus pidana khusus terkait penyalahgunaan BBM.	3501041203050086	81	96	2025-08-25	2026-10-20	\N	Proses	Proses
87	Sengketa Waralaba	Klien (penerima waralaba) bersengketa dengan pemberi waralaba.	3501041203050087	82	97	2025-08-26	2026-11-01	\N	Proses	Proses
88	Pendampingan Hukum PDP	Klien (perusahaan) meminta pendampingan untuk mematuhi regulasi PDP.	3501041203050088	83	98	2025-08-27	2026-12-01	2027-02-01	Tidak Berlaku	Selesai
89	Konsultasi Perizinan Industri	Konsultasi mengenai izin-izin baru untuk pembangunan pabrik.	3501041203050089	84	99	2025-08-28	2025-08-28	2025-08-28	Tidak Berlaku	Selesai
90	Arbitrase Internasional	Klien terlibat dalam sengketa kontrak internasional dan memilih arbitrase.	3501041203050090	85	100	2025-08-29	2027-01-01	\N	Proses	Proses
91	Gugatan Pembatalan Kredit	Klien menggugat pembatalan perjanjian kredit KPR dengan bank.	3501041203050091	86	1	2025-08-30	2027-02-15	\N	Proses	Proses
92	Kasus Korupsi (Saksi)	Klien adalah saksi dalam kasus korupsi dan butuh pendampingan.	3501041203050092	87	2	2025-08-31	2027-03-01	\N	Proses	Proses
93	Pengurusan AJB Properti	Pengurusan legalitas Akta Jual Beli (AJB) tanah klien.	3501041203050093	88	3	2025-09-01	2025-09-10	2025-11-25	Tidak Berlaku	Selesai
94	Hukum E-Commerce/Fintech	Pendampingan legalitas aplikasi fintech P2P Lending.	3501041203050094	89	4	2025-09-02	2027-04-01	\N	Proses	Proses
95	Litigasi Hak Cipta	Gugatan atas pelanggaran hak cipta desain produk.	3501041203050095	90	5	2025-09-03	2027-05-01	\N	Proses	Proses
96	Konsultasi Keimigrasian	Konsultasi klien WNA mengenai perpanjangan KITAS.	3501041203050096	91	6	2025-09-04	2025-09-04	2025-09-04	Tidak Berlaku	Selesai
97	Emisi Obligasi	Klien (perusahaan) mengajukan penerbitan obligasi baru di pasar modal.	3501041203050097	92	7	2025-09-05	2027-06-01	\N	Proses	Proses
98	Gugatan Harta Bersama	Gugatan pembagian harta bersama yang disengketakan.	3501041203050098	93	8	2025-09-06	2027-07-01	\N	Proses	Proses
99	Kejahatan Perbankan	Klien didakwa terlibat dalam kejahatan perbankan (money laundering).	3501041203050099	94	9	2025-09-07	2027-08-01	\N	Proses	Proses
100	Penyusunan Wasiat	Klien meminta penyusunan dokumen wasiat dan warisan.	35010412030500100	95	10	2025-09-08	2025-10-01	2025-11-01	Tidak Berlaku	Selesai
\.


--
-- TOC entry 4879 (class 0 OID 24828)
-- Dependencies: 219
-- Data for Name: klien; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.klien (nik, nama_klien, tgl_daftar, no_tlp_k, email_k, alamat_k, gender_k, tmpt_tgl_lhr, tgl_lhr_k, jenis_lh) FROM stdin;
3501041203050001	Ahmad Maulana	2025-06-01	8123456701	ahmad.m@mail.com	Jl. Merdeka No. 10	Laki-Laki	Surabaya	1990-01-15	1
3501041203050002	Bunga Lestari	2025-06-02	8123456702	bunga.l@mail.com	Jl. Sudirman No. 25	Wanita	Jakarta	1985-05-22	2
3501041203050003	Citra Dewi	2025-06-03	8123456703	citra.d@mail.com	Perum. Indah Blok A/5	Wanita	Bandung	1993-11-30	3
3501041203050004	Dedy Susanto	2025-06-04	8123456704	dedy.s@mail.com	Gg. Kenanga No. 8	Laki-Laki	Malang	1978-07-10	4
3501041203050005	Elsa Fatmawati	2025-06-05	8123456705	elsa.f@mail.com	Jl. Pahlawan No. 45	Wanita	Semarang	1995-02-28	5
3501041203050006	Fajar Ramadhan	2025-06-06	8123456706	fajar.r@mail.com	Komplek Griya Asri C1	Laki-Laki	Yogyakarta	1988-09-03	6
3501041203050007	Gita Ayu	2025-06-07	8123456707	gita.a@mail.com	Jl. Rajawali No. 12	Wanita	Medan	1991-04-19	7
3501041203050008	Hadi Kusuma	2025-06-08	8123456708	hadi.k@mail.com	Ruko Sentosa Blok B/3	Laki-Laki	Palembang	1975-10-08	8
3501041203050009	Indah Sari	2025-06-09	8123456709	indah.s@mail.com	Jl. Veteran No. 7	Wanita	Makassar	1998-03-25	9
3501041203050010	Joko Santoso	2025-06-10	8123456710	joko.s@mail.com	Dusun Sejahtera RT 01	Laki-Laki	Solo	1982-12-01	10
3501041203050011	Kartika Jaya	2025-06-11	8123456711	kartika.j@mail.com	Jl. Mawar No. 55	Wanita	Denpasar	1996-06-17	11
3501041203050012	Lukman Hakim	2025-06-12	8123456712	lukman.h@mail.com	Jl. Raya Utara Km 2	Laki-Laki	Padang	1973-01-05	12
3501041203050013	Maya Silalahi	2025-06-13	8123456713	maya.s@mail.com	Komplek Damai Blok F/9	Wanita	Pekanbaru	1989-08-12	13
3501041203050014	Nova Anggraini	2025-06-14	8123456714	nova.a@mail.com	Jl. Cendrawasih No. 3	Wanita	Balikpapan	1994-04-02	14
3501041203050015	Oni Wijaya	2025-06-15	8123456715	oni.w@mail.com	Perum. Sejati B/11	Laki-Laki	Manado	1980-11-20	15
3501041203050016	Putri Kemala	2025-06-16	8123456716	putri.k@mail.com	Gg. Melati 3	Wanita	Pontianak	1997-09-29	16
3501041203050017	Qori Akbar	2025-06-17	8123456717	qori.a@mail.com	Jl. Kalpataru No. 6	Laki-Laki	Samarinda	1970-03-06	17
3501041203050018	Rina Puspita	2025-06-18	8123456718	rina.p@mail.com	Ruko Niaga Jaya No. 1	Wanita	Banjarmasin	1986-06-25	18
3501041203050019	Slamet Riyadi	2025-06-19	8123456719	slamet.r@mail.com	Jl. Diponegoro No. 88	Laki-Laki	Batam	1992-12-11	19
3501041203050020	Tania Amalia	2025-06-20	8123456720	tania.a@mail.com	Dusun Damai RT 03	Wanita	Lampung	1979-05-18	20
3501041203050021	Umar Bakri	2025-06-21	8123456721	umar.b@mail.com	Komplek Permai G/1	Laki-Laki	Cirebon	1999-10-05	21
3501041203050022	Vina Melati	2025-06-22	8123456722	vina.m@mail.com	Jl. Tentara Pelajar 1A	Wanita	Bogor	1983-02-14	22
3501041203050023	Wawan Setiawan	2025-06-23	8123456723	wawan.s@mail.com	Jl. Pramuka No. 2	Laki-Laki	Depok	1994-08-01	23
3501041203050024	Xena Putri	2025-06-24	8123456724	xena.p@mail.com	Gg. Durian 5	Wanita	Bekasi	1976-11-27	24
3501041203050025	Yudi Hartono	2025-06-25	8123456725	yudi.h@mail.com	Perum. Harapan Jaya Blok L	Laki-Laki	Tangerang	1987-04-16	25
3501041203050026	Zahra Qintara	2025-06-26	8123456726	zahra.q@mail.com	Jl. Kemanggisan No. 30	Wanita	Cimahi	1991-07-09	26
3501041203050027	Aldo Pratama	2025-06-27	8123456727	aldo.p@mail.com	Ruko Gading Serpong	Laki-Laki	Garut	1974-09-21	27
3501041203050028	Bella Salsabila	2025-06-28	8123456728	bella.s@mail.com	Jl. Veteran Lama No. 9	Wanita	Tasikmalaya	1998-01-03	28
3501041203050029	Candra Wijaya	2025-06-29	8123456729	candra.w@mail.com	Dusun Makmur RT 05	Laki-Laki	Subang	1981-10-14	29
3501041203050030	Dian Permata	2025-06-30	8123456730	dian.p@mail.com	Jl. Gatot Subroto No. 2	Wanita	Purwokerto	1993-05-09	30
3501041203050031	Eko Sutrisno	2025-07-01	8123456731	eko.s@mail.com	Komplek Mega Raya H/4	Laki-Laki	Cilacap	1977-08-26	31
3501041203050032	Fira Nurani	2025-07-02	8123456732	fira.n@mail.com	Gg. Delima 10	Wanita	Tegal	1995-12-07	32
3501041203050033	Gilang Dirga	2025-07-03	8123456733	gilang.d@mail.com	Jl. Mataram No. 1	Laki-Laki	Pekalongan	1989-03-04	33
3501041203050034	Hana Amelia	2025-07-04	8123456734	hana.a@mail.com	Perum. Sejahtera B/20	Wanita	Kudus	1972-06-13	34
3501041203050035	Iqbal Ghozali	2025-07-05	8123456735	iqbal.g@mail.com	Jl. Demak No. 15	Laki-Laki	Jepara	1990-11-29	35
3501041203050036	Juwita Maharani	2025-07-06	8123456736	juwita.m@mail.com	Ruko Bisnis Centre No. 5	Wanita	Pati	1984-01-20	36
3501041203050037	Kiki Hermansyah	2025-07-07	8123456737	kiki.h@mail.com	Jl. Kartini No. 4	Laki-Laki	Tuban	1996-07-07	37
3501041203050038	Lia Oktaviani	2025-07-08	8123456738	lia.o@mail.com	Dusun Tentrem RT 02	Wanita	Kediri	1975-09-12	38
3501041203050039	Maman Sulaeman	2025-07-09	8123456739	maman.s@mail.com	Komplek Perdana L/7	Laki-Laki	Madiun	1992-04-27	39
3501041203050040	Nina Zulaiha	2025-07-10	8123456740	nina.z@mail.com	Jl. Yos Sudarso No. 3	Wanita	Ngawi	1980-12-04	40
3501041203050041	Obi Saputra	2025-07-11	8123456741	obi.s@mail.com	Gg. Anggrek 6	Laki-Laki	Bojonegoro	1997-06-01	41
3501041203050042	Puspa Indah	2025-07-12	8123456742	puspa.i@mail.com	Perum. Jaya Abadi G/15	Wanita	Gresik	1971-03-29	42
3501041203050043	Rendra Hadi	2025-07-13	8123456743	rendra.h@mail.com	Jl. Ahmad Yani No. 50	Laki-Laki	Sidoarjo	1988-10-18	43
3501041203050044	Siska Amelia	2025-07-14	8123456744	siska.a@mail.com	Ruko Delta Raya No. 10	Wanita	Mojokerto	1993-01-24	44
3501041203050045	Taufik Hidayat	2025-07-15	8123456745	taufik.h@mail.com	Dusun Damar RT 04	Laki-Laki	Jombang	1976-05-11	45
3501041203050046	Umi Kalsum	2025-07-16	8123456746	umi.k@mail.com	Komplek Sejati V/8	Wanita	Pasuruan	1999-09-06	46
3501041203050047	Vicky Arifin	2025-07-17	8123456747	vicky.a@mail.com	Jl. Gajah Mada No. 9	Laki-Laki	Probolinggo	1983-02-17	47
3501041203050048	Wina Oktarina	2025-07-18	8123456748	wina.o@mail.com	Gg. Teratai 2	Wanita	Lumajang	1995-04-21	48
3501041203050049	Yanto Budi	2025-07-19	8123456749	yanto.b@mail.com	Perum. Makmur Abadi K/3	Laki-Laki	Jember	1977-11-02	49
3501041203050050	Zaskia Gotik	2025-07-20	8123456750	zaskia.g@mail.com	Jl. Mastrip No. 100	Wanita	Banyuwangi	1989-08-05	50
3501041203050051	Arief Rahman	2025-07-21	8123456751	arief.r@mail.com	Jl. A Yani No. 1	Laki-Laki	Denpasar	1990-03-01	51
3501041203050052	Bambang Eka	2025-07-22	8123456752	bambang.e@mail.com	Komplek Bali Indah J/2	Laki-Laki	Mataram	1985-06-19	52
3501041203050053	Cahyo Wibowo	2025-07-23	8123456753	cahyo.w@mail.com	Ruko Nusa Dua No. 7	Laki-Laki	Kupang	1993-12-14	53
3501041203050054	Dewi Sartika	2025-07-24	8123456754	dewi.s@mail.com	Jl. Sumbawa No. 15	Wanita	Ambon	1978-08-03	54
3501041203050055	Erlan Fauzi	2025-07-25	8123456755	erlan.f@mail.com	Perum. Serayu Blok D/1	Laki-Laki	Jayapura	1995-01-28	55
3501041203050056	Febrianti Putri	2025-07-26	8123456756	febrianti.p@mail.com	Gg. Kamboja 4	Wanita	Sorong	1988-10-11	56
3501041203050057	Guntur Hari	2025-07-27	8123456757	guntur.h@mail.com	Jl. Papua No. 33	Laki-Laki	Merauke	1991-05-07	57
3501041203050058	Hilda Nuraini	2025-07-28	8123456758	hilda.n@mail.com	Dusun Timur RT 06	Wanita	Ternate	1975-11-23	58
3501041203050059	Irfan Jaya	2025-07-29	8123456759	irfan.j@mail.com	Jl. Sulawesi No. 5	Laki-Laki	Palu	1998-04-30	59
3501041203050060	Jelita Sari	2025-07-30	8123456760	jelita.s@mail.com	Komplek Perdana K/1	Wanita	Kendari	1982-11-15	60
3501041203050061	Kholid Anshari	2025-07-31	8123456761	kholid.a@mail.com	Jl. Hasanuddin No. 8	Laki-Laki	Gorontalo	1996-07-02	61
3501041203050062	Lina Mariana	2025-08-01	8123456762	lina.m@mail.com	Ruko Niaga Sentra Blok A	Wanita	Banda Aceh	1973-02-18	62
3501041203050063	Mulyadi Akbar	2025-08-02	8123456763	mulyadi.a@mail.com	Jl. Teuku Umar No. 10	Laki-Laki	Meulaboh	1989-09-26	63
3501041203050064	Nadia Putri	2025-08-03	8123456764	nadia.p@mail.com	Gg. Dahlia 9	Wanita	Lhokseumawe	1994-05-13	64
3501041203050065	Oki Setiawan	2025-08-04	8123456765	oki.s@mail.com	Perum. Harapan Sentosa F/3	Laki-Laki	Sibolga	1980-12-30	65
3501041203050066	Pipit Sari	2025-08-05	8123456766	pipit.s@mail.com	Jl. Thamrin No. 4	Wanita	Dumai	1997-10-16	66
3501041203050067	Rahmat Hidayat	2025-08-06	8123456767	rahmat.h@mail.com	Dusun Damai RT 07	Laki-Laki	Bengkulu	1970-04-20	67
3501041203050068	Shinta Bela	2025-08-07	8123456768	shinta.b@mail.com	Komplek Abadi H/12	Wanita	Jambi	1986-07-07	68
3501041203050069	Taufan Wijaya	2025-08-08	8123456769	taufan.w@mail.com	Jl. Sumatera No. 2	Laki-Laki	Pangkalpinang	1992-01-25	69
3501041203050070	Umi Zahra	2025-08-09	8123456770	umi.z@mail.com	Ruko Pusat Bisnis No. 6	Wanita	Tanjung Pinang	1979-06-02	70
3501041203050071	Vito Ganesha	2025-08-10	8123456771	vito.g@mail.com	Jl. Jawa No. 18	Laki-Laki	Metro	1999-11-19	71
3501041203050072	Wulan Sari	2025-08-11	8123456772	wulan.s@mail.com	Gg. Anggrek 8	Wanita	Pagar Alam	1983-03-27	72
3501041203050073	Yusuf Mansur	2025-08-12	8123456773	yusuf.m@mail.com	Perum. Barito Raya C/5	Laki-Laki	Lubuklinggau	1994-09-14	73
3501041203050074	Zahra Khairani	2025-08-13	8123456774	zahra.k@mail.com	Jl. Kalimantan No. 7	Wanita	Prabumulih	1976-12-05	74
3501041203050075	Adi Nugroho	2025-08-14	8123456775	adi.n@mail.com	Dusun Sejahtera RT 08	Laki-Laki	Pematangsiantar	1987-05-20	75
3501041203050076	Bela Ayu	2025-08-15	8123456776	bela.a@mail.com	Komplek Elite K/10	Wanita	Tebing Tinggi	1991-08-02	76
3501041203050077	Cahya Puspita	2025-08-16	8123456777	cahya.p@mail.com	Jl. Sumatera Barat No. 1	Wanita	Padang Panjang	1974-10-17	77
3501041203050078	Doni Satria	2025-08-17	8123456778	doni.s@mail.com	Ruko Niaga Utama Blok C	Laki-Laki	Bukittinggi	1998-02-09	78
3501041203050079	Eka Sari	2025-08-18	8123456779	eka.s@mail.com	Jl. Minangkabau No. 22	Wanita	Sawahlunto	1981-11-28	79
3501041203050080	Fahmi Gani	2025-08-19	8123456780	fahmi.g@mail.com	Perum. Sentosa Baru E/7	Laki-Laki	Solok	1993-06-24	80
3501041203050081	Gita Permana	2025-08-20	8123456781	gita.p@mail.com	Gg. Anggrek 1	Wanita	Pariaman	1989-03-05	81
3501041203050082	Hasan Basri	2025-08-21	8123456782	hasan.b@mail.com	Jl. Aceh Tengah No. 5	Laki-Laki	Langsa	1972-06-21	82
3501041203050083	Intan Permata	2025-08-22	8123456783	intan.p@mail.com	Komplek Sehati R/3	Wanita	Bireuen	1990-12-10	83
3501041203050084	Jamaludin	2025-08-23	8123456784	jamaludin@mail.com	Dusun Baru RT 09	Laki-Laki	Sigli	1984-01-25	84
3501041203050085	Kania Dewi	2025-08-24	8123456785	kania.d@mail.com	Ruko Niaga Sentral No. 11	Wanita	Tapaktuan	1996-08-08	85
3501041203050086	Lutfi Hakim	2025-08-25	8123456786	lutfi.h@mail.com	Jl. Danau Toba No. 12	Laki-Laki	Kabanjahe	1975-10-19	86
3501041203050087	Murniati	2025-08-26	8123456787	murniati@mail.com	Gg. Melati 7	Wanita	Sidikalang	1992-05-01	87
3501041203050088	Niko Aditama	2025-08-27	8123456788	niko.a@mail.com	Perum. Asri Indah Q/4	Laki-Laki	Rantau Prapat	1980-12-16	88
3501041203050089	Oktavia Sari	2025-08-28	8123456789	oktavia.s@mail.com	Jl. Bakti Sosial No. 3	Wanita	Kisaran	1997-07-29	89
3501041203050090	Pandu Winata	2025-08-29	8123456790	pandu.w@mail.com	Dusun Makmur RT 10	Laki-Laki	Lubuk Pakam	1971-04-04	90
3501041203050091	Qonita Nur	2025-08-30	8123456791	qonita.n@mail.com	Komplek Elite 1/15	Wanita	Binjai	1988-11-20	91
3501041203050092	Raja Firmansyah	2025-08-31	8123456792	raja.f@mail.com	Jl. Merak No. 90	Laki-Laki	Stabat	1993-02-06	92
3501041203050093	Susi Susanti	2025-09-01	8123456793	susi.s@mail.com	Ruko Bisnis Centre 12A	Wanita	Gunung Sitoli	1976-09-17	93
3501041203050094	Teguh Prakoso	2025-09-02	8123456794	teguh.p@mail.com	Jl. Imam Bonjol No. 4	Laki-Laki	Teluk Kuantan	1987-01-30	94
3501041203050095	Ulfah Kania	2025-09-03	8123456795	ulfah.k@mail.com	Gg. Nangka 3	Wanita	Bagan Siapi-api	1991-06-12	95
3501041203050096	Vian Pratama	2025-09-04	8123456796	vian.p@mail.com	Perum. Harapan Sentosa F/8	Laki-Laki	Rengat	1974-03-23	96
3501041203050097	Winda Amelia	2025-09-05	8123456797	winda.a@mail.com	Jl. Riau No. 15	Wanita	Tembilahan	1998-10-09	97
3501041203050098	Yoga Saputra	2025-09-06	8123456798	yoga.s@mail.com	Dusun Bahagia RT 11	Laki-Laki	Muara Enim	1982-05-14	98
3501041203050099	Zulfa Rahma	2025-09-07	8123456799	zulfa.r@mail.com	Komplek Elok K/20	Wanita	Lahat	1995-12-25	99
3501041203050100	Aditya Nugraha	2025-09-08	8123456800	aditya.n@mail.com	Jl. Sumatera Selatan No. 8	Laki-Laki	Baturaja	1977-07-01	100
\.


--
-- TOC entry 4883 (class 0 OID 24857)
-- Dependencies: 223
-- Data for Name: layanan_hukum; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.layanan_hukum (lh_id, jenis_lh, harga_lh) FROM stdin;
1	Konsultasi Awal (30 Menit)	500000
2	Jasa Advokat (Pendampingan Pidana)	2000000
3	Konsultasi Mendalam (90 Menit)	1250000
4	Pendampingan Kasus Perdata Sederhana	3500000
5	Pendirian PT/CV (Dokumen Lengkap)	5000000
6	Pendaftaran Merek Dagang (Nasional)	4500000
7	Audit Hukum (Due Diligence) Tahap Awal	7500000
8	Drafting Perjanjian Jual Beli Properti	1500000
9	Penyelesaian Sengketa Mediasi Non-Litigasi	3000000
10	Pengurusan Izin Usaha Perdagangan (SIUP)	1000000
11	Pendampingan Kasus KDRT	4000000
12	Gugatan Perceraian Tanpa Sengketa Harta	2500000
13	Pendampingan Hukum Perbankan	8000000
14	Hukum Ketenagakerjaan (PHK)	3800000
15	Litigasi Pajak Perusahaan	15000000
16	Pendaftaran Paten Sederhana	6000000
17	Penyusunan Kontrak Kerja Internasional	7000000
18	Pendampingan Proses Kepailitan (Klien)	12000000
19	Pendampingan Hukum Pasar Modal	20000000
20	Restrukturisasi Utang Korporasi	25000000
21	Permohonan Hak Adopsi Anak	2200000
22	Pembubaran Perusahaan (Likuidasi)	6500000
23	Pendampingan Kasus Cyber Crime (Sederhana)	5500000
24	Gugatan Wanprestasi Kontrak Bisnis	4800000
25	Pendampingan Hukum Lingkungan	9000000
26	Pendaftaran Hak Cipta	1800000
27	Pembelaan Kasus Narkotika (Tingkat Polisi)	10000000
28	Sengketa Waris (Non-Litigasi)	3300000
29	Konsultasi Hukum Keluarga Syariah	800000
30	Verifikasi Dokumen Legalitas Tanah	1100000
31	Gugatan Sengketa Tanah (Tingkat PN)	7000000
32	Pendampingan Hukum Asuransi	4500000
33	Layanan Hukum Korporasi Retainer (Bulanan)	18000000
34	Mediasi Sengketa Konsumen	2700000
35	Pendampingan Tender Proyek Besar	15000000
36	Pendaftaran Merek Internasional (Madrid Protocol)	10000000
37	Pendampingan Perselisihan Hubungan Industrial	6000000
38	Pendampingan Hukum Pidana Khusus Korupsi	30000000
39	Legal Opinion Khusus	4000000
40	Gugatan Pembatalan Perkawinan	2800000
41	Pendampingan Kasus Penipuan/Penggelapan	6500000
42	Pengurusan Izin Prinsip PMA	8500000
43	Penyelesaian Sengketa Hak Kekayaan Intelektual (HKI)	9500000
44	Drafting Anggaran Dasar/Anggaran Rumah Tangga (AD/ART)	1700000
45	Pendampingan Hukum Pertambangan	22000000
46	Pendaftaran Indikasi Geografis (IG)	5200000
47	Gugatan Class Action (Penggugat)	18000000
48	Uji Tuntas Hukum (Advanced Due Diligence)	11000000
49	Pendampingan Kasus Pencemaran Nama Baik/ITE	4200000
50	Konsultasi Hak Waris Lintas Negara	1800000
51	Jasa Advokat (Non-Litigasi Khusus)	2800000
52	Pendampingan Kasus Pidana Umum Ringan	3200000
53	Pendirian Yayasan/Organisasi Nirlaba	3800000
54	Pembuatan Kebijakan Privasi dan Terms of Service (TOS)	4700000
55	Pendampingan Proses Merger dan Akuisisi (M&A) Kecil	13000000
56	Litigasi Sengketa Merek Dagang	8000000
57	Konsultasi Hukum Internasional (Perdagangan)	5500000
58	Pembelaan Kasus Lalu Lintas Berat	2000000
59	Pengurusan Hak Gono-Gini (Diluar Perceraian)	4000000
60	Review Kontrak Bisnis (Komprehensif)	3500000
61	Gugatan Pembatalan Akta Notaris	6200000
62	Pendampingan Kasus Penyelundupan	16000000
63	Pendaftaran Desain Industri	4900000
64	Penyelesaian Sengketa Konstruksi (Mediasi)	7800000
65	Pendampingan Hukum Properti dan Real Estat	10500000
66	Konsultasi Hukum Kesehatan/Kedokteran	5000000
67	Litigasi Kasus Konsumen (Pembelaan Perusahaan)	9000000
68	Pendampingan Hukum Pelabuhan/Maritim	14000000
69	Gugatan Perbuatan Melawan Hukum (PMH) Tanah	6800000
70	Pendampingan Kasus Penghinaan/Fitnah	3600000
71	Konsultasi Hukum Perkawinan Campuran	1300000
72	Pengurusan Sengketa Batas Wilayah (Perusahaan)	12000000
73	Pendampingan Kasus Hak Asasi Manusia (HAM)	7500000
74	Penyusunan Peraturan Perusahaan/PKB	4500000
75	Pendampingan Hukum Energi dan Sumber Daya Mineral (ESDM)	20000000
76	Pendaftaran Paten Internasional (PCT)	18000000
77	Pendampingan Sengketa Sewa-Menyewa Properti	2500000
78	Pembelaan Kasus Penggelapan Pajak	15000000
79	Legal Opinion Merger & Akuisisi (M&A)	8800000
80	Gugatan Hak Asuh Anak	3000000
81	Pendampingan Hukum Pengadaan Barang/Jasa Pemerintah	11500000
82	Konsultasi Hukum Transportasi (Udara/Laut)	4300000
83	Pendampingan Sengketa Hak Guna Bangunan (HGB)	7200000
84	Pendaftaran Rahasia Dagang	3900000
85	Pendampingan Hukum Media dan Penyiaran	6500000
86	Litigasi Kasus Pidana Khusus (Non-Korupsi)	14500000
87	Penyelesaian Sengketa Waralaba (Franchise)	5500000
88	Pendampingan Hukum Perlindungan Data Pribadi (GDPR)	9000000
89	Konsultasi Hukum Perizinan Industri	2100000
90	Pendampingan Proses Arbitrase Internasional	35000000
91	Gugatan Pembatalan Perjanjian Kredit	5800000
92	Pendampingan Kasus Korupsi (Saksi/Pelapor)	10000000
93	Pengurusan Akta Jual Beli (AJB) Properti	1500000
94	Pendampingan Hukum E-Commerce dan Fintech	7000000
95	Litigasi Sengketa Hak Cipta	6000000
96	Konsultasi Hukum Keimigrasian	900000
97	Pendampingan Hukum Pasar Modal (Emisi Obligasi)	17000000
98	Gugatan Pembagian Harta Bersama (Sengketa)	4000000
99	Pendampingan Kasus Kejahatan Perbankan	13000000
100	Penyusunan Dokumen Warisan/Wasiat	2000000
\.


--
-- TOC entry 4882 (class 0 OID 24850)
-- Dependencies: 222
-- Data for Name: penagihan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.penagihan (penagihan_id, nik, lh_id, kasus_id, staf_id, tgl_penagihan, status_penagihan, tgl_bayar, biaya_layanan_hukum, biaya_admin, biaya_pendaftaranpgd, biaya_salinanpts) FROM stdin;
1	3501041203050001	1	1	1	2025-06-15	Lunas	2025-06-16	500000	50000	0	0
2	3501041203050002	2	2	2	2025-06-20	Lunas	2025-06-25	2000000	75000	250000	100000
3	3501041203050003	3	3	3	2025-06-28	Belum Lunas	\N	1250000	60000	500000	150000
4	3501041203050004	4	4	4	2025-07-10	Lunas	2025-07-15	3500000	100000	1500000	200000
5	3501041203050005	5	5	5	2025-06-10	Lunas	2025-06-12	5000000	50000	0	0
6	3501041203050006	6	6	6	2025-06-25	Lunas	2025-07-01	4500000	75000	0	0
7	3501041203050007	7	7	7	2025-07-01	Lunas	2025-07-05	7500000	150000	0	0
8	3501041203050008	8	8	8	2025-07-08	Lunas	2025-07-10	1500000	30000	0	0
9	3501041203050009	9	9	9	2025-07-15	Lunas	2025-07-15	3000000	50000	0	0
10	3501041203050010	10	10	10	2025-06-15	Lunas	2025-06-18	1000000	20000	0	0
11	3501041203050011	11	11	11	2025-07-10	Belum Lunas	\N	4000000	80000	100000	50000
12	3501041203050012	12	12	12	2025-07-15	Lunas	2025-07-20	2500000	50000	300000	120000
13	3501041203050013	13	13	13	2025-08-05	Belum Lunas	\N	8000000	120000	800000	0
14	3501041203050014	14	14	14	2025-08-20	Lunas	2025-08-25	3800000	90000	450000	150000
15	3501041203050015	15	15	15	2025-09-05	Belum Lunas	\N	15000000	200000	1000000	300000
16	3501041203050016	16	16	16	2025-09-10	Lunas	2025-09-15	6000000	50000	0	0
17	3501041203050017	17	17	17	2025-07-20	Lunas	2025-07-25	7000000	100000	0	0
18	3501041203050018	18	18	18	2025-09-15	Belum Lunas	\N	12000000	150000	1200000	0
19	3501041203050019	19	19	19	2025-09-25	Lunas	2025-09-25	20000000	300000	0	0
20	3501041203050020	20	20	20	2025-10-05	Belum Lunas	\N	25000000	400000	0	0
21	3501041203050021	21	21	21	2025-08-10	Lunas	2025-08-15	2200000	40000	150000	0
22	3501041203050022	22	22	22	2025-08-15	Lunas	2025-08-20	6500000	100000	0	0
23	3501041203050023	23	23	23	2025-09-05	Belum Lunas	\N	5500000	80000	50000	0
24	3501041203050024	24	24	24	2025-09-20	Belum Lunas	\N	4800000	70000	400000	100000
25	3501041203050025	25	25	25	2025-10-05	Lunas	2025-10-10	9000000	150000	0	0
26	3501041203050026	26	26	26	2025-10-10	Lunas	2025-10-15	1800000	20000	0	0
27	3501041203050027	27	27	27	2025-11-05	Belum Lunas	\N	10000000	120000	0	0
28	3501041203050028	28	28	28	2025-08-15	Lunas	2025-08-20	3300000	40000	0	0
29	3501041203050029	29	29	29	2025-06-30	Lunas	2025-06-30	800000	10000	0	0
30	3501041203050030	30	30	30	2025-07-05	Lunas	2025-07-10	1100000	25000	0	0
31	3501041203050031	31	31	31	2025-10-25	Belum Lunas	\N	7000000	100000	800000	250000
32	3501041203050032	32	32	32	2025-11-10	Belum Lunas	\N	4500000	75000	0	0
33	3501041203050033	33	33	33	2025-07-03	Lunas	2025-07-03	18000000	250000	0	0
34	3501041203050034	34	34	34	2025-09-05	Lunas	2025-09-10	2700000	50000	0	0
35	3501041203050035	35	35	35	2025-10-15	Lunas	2025-10-20	15000000	200000	0	0
36	3501041203050036	36	36	36	2025-10-25	Belum Lunas	\N	10000000	150000	0	0
37	3501041203050037	37	37	37	2025-11-05	Belum Lunas	\N	6000000	90000	500000	150000
38	3501041203050038	38	38	38	2025-12-10	Belum Lunas	\N	30000000	500000	0	0
39	3501041203050039	39	39	39	2025-07-25	Lunas	2025-08-01	4000000	75000	0	0
40	3501041203050040	40	40	40	2025-09-05	Lunas	2025-09-10	2800000	50000	300000	100000
41	3501041203050041	41	41	41	2025-11-15	Belum Lunas	\N	6500000	100000	0	0
42	3501041203050042	42	42	42	2025-09-20	Lunas	2025-09-25	8500000	120000	0	0
43	3501041203050043	43	43	43	2025-11-25	Belum Lunas	\N	9500000	150000	700000	200000
44	3501041203050044	44	44	44	2025-08-05	Lunas	2025-08-10	1700000	30000	0	0
45	3501041203050045	45	45	45	2025-12-05	Belum Lunas	\N	22000000	300000	0	0
46	3501041203050046	46	46	46	2025-11-20	Lunas	2025-11-25	5200000	50000	0	0
47	3501041203050047	47	47	47	2025-12-15	Belum Lunas	\N	18000000	250000	1500000	400000
48	3501041203050048	48	48	48	2025-08-05	Lunas	2025-08-10	11000000	150000	0	0
49	3501041203050049	49	49	49	2025-12-20	Belum Lunas	\N	4200000	70000	200000	0
50	3501041203050050	50	50	50	2025-07-20	Lunas	2025-07-20	1800000	30000	0	0
51	3501041203050051	51	51	51	2025-08-25	Lunas	2025-08-30	2800000	50000	0	0
52	3501041203050052	52	52	52	2025-12-30	Lunas	2026-01-05	3200000	60000	200000	50000
53	3501041203050053	53	53	53	2025-09-05	Lunas	2025-09-10	3800000	70000	0	0
54	3501041203050054	54	54	54	2025-08-10	Lunas	2025-08-15	4700000	80000	0	0
55	3501041203050055	55	55	55	2025-12-05	Lunas	2025-12-10	13000000	200000	0	0
56	3501041203050056	56	56	56	2026-01-20	Belum Lunas	\N	8000000	100000	900000	250000
57	3501041203050057	57	57	57	2025-07-27	Lunas	2025-07-27	5500000	100000	0	0
58	3501041203050058	58	58	58	2025-11-15	Belum Lunas	\N	2000000	40000	100000	50000
59	3501041203050059	59	59	59	2025-12-10	Lunas	2025-12-15	4000000	75000	300000	0
60	3501041203050060	60	60	60	2025-08-05	Lunas	2025-08-10	3500000	50000	0	0
61	3501041203050061	61	61	61	2026-02-05	Belum Lunas	\N	6200000	90000	600000	180000
62	3501041203050062	62	62	62	2026-01-25	Belum Lunas	\N	16000000	250000	0	0
63	3501041203050063	63	63	63	2025-12-20	Lunas	2025-12-25	4900000	75000	0	0
64	3501041203050064	64	64	64	2026-01-30	Lunas	2026-02-05	7800000	120000	0	0
65	3501041203050065	65	65	65	2026-02-15	Belum Lunas	\N	10500000	150000	0	0
66	3501041203050066	66	66	66	2025-08-05	Lunas	2025-08-05	5000000	70000	0	0
67	3501041203050067	67	67	67	2026-02-25	Belum Lunas	\N	9000000	150000	800000	200000
68	3501041203050068	68	68	68	2026-03-05	Belum Lunas	\N	14000000	200000	0	0
69	3501041203050069	69	69	69	2026-03-20	Belum Lunas	\N	6800000	100000	550000	150000
70	3501041203050070	70	70	70	2026-04-05	Belum Lunas	\N	3600000	50000	150000	0
71	3501041203050071	71	71	71	2025-08-10	Lunas	2025-08-10	1300000	20000	0	0
72	3501041203050072	72	72	72	2026-04-15	Belum Lunas	\N	12000000	180000	0	0
73	3501041203050073	73	73	73	2026-05-05	Belum Lunas	\N	7500000	100000	50000	0
74	3501041203050074	74	74	74	2025-09-05	Lunas	2025-09-10	4500000	70000	0	0
75	3501041203050075	75	75	75	2026-06-05	Belum Lunas	\N	20000000	300000	0	0
76	3501041203050076	76	76	76	2026-06-20	Belum Lunas	\N	18000000	250000	0	0
77	3501041203050077	77	77	77	2026-07-05	Belum Lunas	\N	2500000	40000	200000	0
78	3501041203050078	78	78	78	2026-07-25	Belum Lunas	\N	15000000	200000	0	0
79	3501041203050079	79	79	79	2025-09-05	Lunas	2025-09-10	8800000	120000	0	0
80	3501041203050080	80	80	80	2026-08-15	Belum Lunas	\N	3000000	50000	250000	50000
81	3501041203050081	81	81	81	2026-08-25	Belum Lunas	\N	11500000	180000	900000	300000
82	3501041203050082	82	82	82	2025-08-21	Lunas	2025-08-21	4300000	75000	0	0
83	3501041203050083	83	83	83	2026-09-05	Belum Lunas	\N	7200000	100000	700000	200000
84	3501041203050084	84	84	84	2026-09-15	Belum Lunas	\N	3900000	50000	0	0
85	3501041203050085	85	85	85	2026-10-05	Belum Lunas	\N	6500000	100000	300000	0
86	3501041203050086	86	86	86	2026-10-25	Belum Lunas	\N	14500000	200000	0	0
87	3501041203050087	87	87	87	2026-11-05	Belum Lunas	\N	5500000	80000	450000	0
88	3501041203050088	88	88	88	2026-12-05	Lunas	2026-12-10	9000000	120000	0	0
89	3501041203050089	89	89	89	2025-08-28	Lunas	2025-08-28	2100000	40000	0	0
90	3501041203050090	90	90	90	2027-01-05	Belum Lunas	\N	35000000	500000	3000000	800000
91	3501041203050091	91	91	91	2027-02-20	Belum Lunas	\N	5800000	90000	500000	150000
92	3501041203050092	92	92	92	2027-03-05	Belum Lunas	\N	10000000	120000	0	0
93	3501041203050093	93	93	93	2025-09-15	Lunas	2025-09-20	1500000	30000	0	0
94	3501041203050094	94	94	94	2027-04-05	Belum Lunas	\N	7000000	100000	0	0
95	3501041203050095	95	95	95	2027-05-05	Belum Lunas	\N	6000000	80000	400000	100000
96	3501041203050096	96	96	96	2025-09-04	Lunas	2025-09-04	900000	15000	0	0
97	3501041203050097	97	97	97	2027-06-05	Belum Lunas	\N	17000000	250000	0	0
98	3501041203050098	98	98	98	2027-07-05	Belum Lunas	\N	4000000	60000	300000	100000
99	3501041203050099	99	99	99	2027-08-05	Belum Lunas	\N	13000000	180000	0	0
100	35010412030500100	100	100	100	2025-10-05	Lunas	2025-10-10	2000000	30000	0	0
\.


--
-- TOC entry 4877 (class 0 OID 24808)
-- Dependencies: 217
-- Data for Name: pengacara; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pengacara (pengacara_id, nama_pengacara, tgl_bgb_pca, spesialisasi, no_tlp_pca, alamat_pengacara, email_pengacara, tempat_lahir_pca, tgl_lhr_pca, gender_pengacara) FROM stdin;
1	Dr. Reza Hidayat	2010-01-15	Hukum Korporasi & Bisnis	811000101	Jl. HR Rasuna Said Kav. 1	reza.hidayat@law.com	Jakarta	1978-05-20	Laki-Laki
2	SH. Mawar Sari	2015-03-20	Hukum Pidana Umum	811000102	Jl. Sudirman No. 15	mawar.sari@law.com	Bandung	1985-11-12	Wanita
3	Prof. Joni Setiawan	2005-07-10	Hukum Keluarga & Waris	811000103	Graha Legal Lt. 5	joni.setiawan@law.com	Surabaya	1970-03-01	Laki-Laki
4	Dr. Lutfi Anwar	2012-09-01	Hukum Properti & Tanah	811000104	Ruko CBD Blok A/1	lutfi.anwar@law.com	Yogyakarta	1982-08-25	Laki-Laki
5	SH. Maya Kirana	2018-05-15	Hukum HKI (Merek & Cipta)	811000105	Apartemen Legal Suite	maya.kirana@law.com	Medan	1990-04-17	Wanita
6	SH. Budi Laksono	2016-11-22	Hukum Ketenagakerjaan	811000106	Jl. Jendral Gatot Subroto	budi.laksono@law.com	Palembang	1988-10-30	Laki-Laki
7	Dr. Siti Fatimah	2011-04-05	Hukum Lingkungan	811000107	Komplek Perkantoran D/3	siti.fatimah@law.com	Makassar	1975-01-18	Wanita
8	SH. Guntur Prabu	2019-01-30	Hukum Pajak	811000108	Ruko Niaga Jaya No. 7	guntur.prabu@law.com	Semarang	1992-06-05	Laki-Laki
9	SH. Risa Melati	2014-08-08	Hukum Perbankan & Finansial	811000109	Gedung Bank Sinergi	risa.melati@law.com	Bandung	1984-02-14	Wanita
10	Dr. Toni Firmansyah	2008-12-12	Hukum Kepailitan & PKPU	811000110	Jl. Kapten Tendean No. 5	toni.firmansyah@law.com	Jakarta	1972-09-03	Laki-Laki
11	SH. Nina Oktaviani	2017-06-25	Hukum Pidana Korupsi	811000111	Jl. Veteran Lama No. 9	nina.oktaviani@law.com	Surabaya	1987-05-01	Wanita
12	SH. Wisnu Wardhana	2013-02-18	Hukum Transportasi	811000112	Perum. Elit Blok T/1	wisnu.wardhana@law.com	Malang	1983-11-29	Laki-Laki
13	SH. Farida Amelia	2020-10-10	Hukum Kontrak & Bisnis Sederhana	811000113	Gg. Anggrek No. 1	farida.amelia@law.com	Denpasar	1994-07-22	Wanita
14	Dr. Sigit Prasetya	2007-04-20	Hukum Pasar Modal	811000114	Menara Saham Lt. 20	sigit.prasetya@law.com	Bogor	1979-01-10	Laki-Laki
15	SH. Ira Kusumawati	2016-01-01	Hukum Pidana Narkotika	811000115	Jl. Kayu Manis No. 8	ira.kusumawati@law.com	Semarang	1986-12-05	Wanita
16	SH. Dwi Cahyono	2021-03-05	Hukum Keluarga (Adopsi)	811000116	Komplek Damai J/5	dwi.cahyono@law.com	Cirebon	1995-09-19	Laki-Laki
17	Dr. Eka Sari	2006-11-17	Hukum Pembubaran Perusahaan	811000117	Ruko Cempaka No. 10	eka.sari@law.com	Solo	1977-06-28	Wanita
18	SH. Rio Febrian	2014-07-14	Hukum Cyber Crime & ITE	811000118	Jl. Teknologi No. 1	rio.febrian@law.com	Padang	1984-03-03	Laki-Laki
19	SH. Tita Wulandari	2019-09-09	Hukum Konsumen	811000119	Gedung Konsumen	tita.wulandari@law.com	Pekanbaru	1993-10-06	Wanita
20	Dr. Andi Prasetyo	2010-02-28	Hukum Lingkungan & SDA	811000120	Jl. Industri Raya No. 3	andi.prasetyo@law.com	Balikpapan	1980-12-24	Laki-Laki
21	SH. Kiki Amelia	2017-04-12	Hukum Perdata Umum	811000121	Perum. Sejahtera B/1	kiki.amelia@law.com	Manado	1989-08-11	Wanita
22	SH. Chandra Putra	2015-10-01	Hukum Perizinan Bisnis	811000122	Ruko Pusat Bisnis P/2	chandra.putra@law.com	Pontianak	1986-07-04	Laki-Laki
23	Dr. Wati Kusuma	2009-05-20	Hukum Pertambangan	811000123	Jl. Energi No. 2	wati.kusuma@law.com	Samarinda	1974-04-15	Wanita
24	SH. Erwin Saputra	2020-01-01	Hukum HKI (IG)	811000124	Gedung HKI Lt. 8	erwin.saputra@law.com	Banjarmasin	1991-03-29	Laki-Laki
25	SH. Linda Sari	2018-11-11	Hukum Waris Lintas Negara	811000125	Jl. Asia Afrika No. 40	linda.sari@law.com	Batam	1987-10-02	Wanita
26	Dr. Heru Santoso	2011-08-19	Hukum Keluarga (Syariah)	811000126	Komplek Perumahan Syariah	heru.santoso@law.com	Lampung	1981-06-16	Laki-Laki
27	SH. Fina Dewi	2015-05-25	Hukum Pertanahan	811000127	Jl. Agraria No. 15	fina.dewi@law.com	Cirebon	1985-04-07	Wanita
28	SH. Doni Satria	2019-04-04	Hukum Asuransi	811000128	Ruko Asuransi Utama	doni.satria@law.com	Bogor	1990-01-20	Laki-Laki
29	Dr. Yulia Pratiwi	2013-10-30	Hukum Korporasi (Retainer)	811000129	Menara Korporasi Lt. 10	yulia.pratiwi@law.com	Depok	1983-12-13	Wanita
30	SH. Galih Prakoso	2021-02-01	Hukum Mediasi	811000130	Gedung Mediasi D/5	galih.prakoso@law.com	Bekasi	1995-09-01	Laki-Laki
31	SH. Ani Supriyadi	2017-08-15	Hukum Pengadaan & Tender	811000131	Jl. Proyek No. 22	ani.supriyadi@law.com	Tangerang	1987-03-26	Wanita
32	Dr. Diki Firmansyah	2012-11-29	Hukum HKI (Internasional)	811000132	Ruko Internasional B/7	diki.firmansyah@law.com	Cimahi	1982-10-18	Laki-Laki
33	SH. Sarah Wijaya	2018-02-14	Hukum Ketenagakerjaan (PHI)	811000133	Jl. Serikat Pekerja No. 4	sarah.wijaya@law.com	Garut	1991-09-24	Wanita
34	SH. Bambang Utomo	2016-09-21	Hukum Pidana Khusus	811000134	Komplek Kejaksaan A/1	bambang.utomo@law.com	Tasikmalaya	1986-06-11	Laki-Laki
35	Dr. Rini Melina	2010-03-10	Hukum Legal Opinion	811000135	Gedung Riset Hukum	rini.melina@law.com	Subang	1978-01-05	Wanita
36	SH. Arif Hidayat	2020-05-30	Hukum Keluarga (Perkawinan)	811000136	Jl. Harmoni No. 5	arif.hidayat@law.com	Purwokerto	1993-02-27	Laki-Laki
37	SH. Tika Pratiwi	2015-01-19	Hukum Pidana Umum (Penipuan)	811000137	Dusun Aman RT 03	tika.pratiwi@law.com	Cilacap	1985-11-08	Wanita
38	Dr. M. Ridwan	2009-12-01	Hukum Izin Bisnis PMA	811000138	Ruko Sentral Bisnis G/10	m.ridwan@law.com	Tegal	1975-08-01	Laki-Laki
39	SH. Diana Salsabila	2018-04-10	Hukum HKI (Sengketa)	811000139	Jl. Inovasi No. 1	diana.salsabila@law.com	Pekalongan	1992-03-14	Wanita
40	SH. Kevin Leonardo	2022-01-05	Hukum Korporasi (AD/ART)	811000140	Jl. Keputusan No. 2	kevin.leonardo@law.com	Kudus	1996-10-09	Laki-Laki
41	Dr. Elvira Sari	2013-06-17	Hukum Pertambangan & ESDM	811000141	Menara ESDM Lt. 15	elvira.sari@law.com	Jepara	1983-05-23	Wanita
42	SH. Fauzi Rahman	2019-11-03	Hukum HKI (IG)	811000142	Gedung Paten E/3	fauzi.rahman@law.com	Pati	1990-09-10	Laki-Laki
43	SH. Vera Anggraini	2016-04-20	Hukum Class Action	811000143	Ruko Pengadilan A/5	vera.anggraini@law.com	Tuban	1988-02-06	Wanita
44	Dr. Jaka Samudra	2007-09-09	Hukum Due Diligence	811000144	Jl. Riset Hukum No. 1	jaka.samudra@law.com	Kediri	1979-04-25	Laki-Laki
45	SH. Dewi Fortuna	2014-03-14	Hukum ITE (Pencemaran)	811000145	Jl. Digital No. 10	dewi.fortuna@law.com	Madiun	1984-11-18	Wanita
46	SH. Harry Widodo	2020-12-20	Hukum Waris (Lintas Negara)	811000146	Komplek Global J/2	harry.widodo@law.com	Ngawi	1994-06-03	Laki-Laki
47	SH. Gita Permata	2017-01-10	Hukum Pidana Umum (Ringan)	811000147	Gg. Damai 4	gita.permata@law.com	Bojonegoro	1989-12-12	Wanita
48	Dr. Yoga Aditama	2011-06-06	Hukum Pendirian Yayasan	811000148	Jl. Sosial No. 10	yoga.aditama@law.com	Gresik	1981-08-27	Laki-Laki
49	SH. Tania Putri	2019-03-01	Hukum E-Commerce/TOS	811000149	Ruko E-Bisnis B/8	tania.putri@law.com	Sidoarjo	1993-01-20	Wanita
50	SH. Rizky Maulana	2020-09-15	Hukum M&A Kecil	811000150	Jl. Akuisisi No. 5	rizky.maulana@law.com	Mojokerto	1995-07-07	Laki-Laki
51	SH. Melisa Sari	2015-12-05	Hukum Litigasi Merek	811000151	Gedung HKI Lt. 10	melisa.sari@law.com	Jombang	1985-05-18	Wanita
52	Dr. Anton Simanjuntak	2008-03-29	Hukum Internasional	811000152	Jl. Diplomasi No. 1	anton.simanjuntak@law.com	Pasuruan	1976-11-22	Laki-Laki
53	SH. Fitri Handayani	2018-07-07	Hukum Lalu Lintas	811000153	Komplek Perhubungan	fitri.handayani@law.com	Probolinggo	1990-09-02	Wanita
54	SH. Danu Wijaya	2012-05-12	Hukum Gono-Gini	811000154	Jl. Pembagian Harta No. 3	danu.wijaya@law.com	Lumajang	1982-04-14	Laki-Laki
55	Dr. Desi Ratnasari	2010-10-10	Hukum Review Kontrak	811000155	Ruko Legal Review D/4	desi.ratnasari@law.com	Jember	1980-08-01	Wanita
56	SH. Eko Susanto	2016-03-16	Hukum Pembatalan Akta	811000156	Jl. Notaris No. 12	eko.susanto@law.com	Banyuwangi	1986-02-25	Laki-Laki
57	SH. Rina Ningsih	2021-05-05	Hukum Pidana Penyelundupan	811000157	Gedung Pabean Lt. 5	rina.ningsih@law.com	Denpasar	1994-01-09	Wanita
58	Dr. Chandra Jaya	2011-09-29	Hukum Desain Industri	811000158	Jl. Kreatif No. 8	chandra.jaya@law.com	Mataram	1981-07-16	Laki-Laki
59	SH. Taufik Nur	2017-07-07	Hukum Sengketa Konstruksi	811000159	Komplek Konstruksi A/10	taufik.nur@law.com	Kupang	1989-06-30	Wanita
60	SH. Nabila Putri	2019-02-02	Hukum Properti Real Estat	811000160	Jl. Perumahan Elit No. 1	nabila.putri@law.com	Ambon	1993-11-19	Laki-Laki
61	Dr. Bayu Perkasa	2012-12-12	Hukum Kesehatan/Medis	811000161	RS Medika Sentral	bayu.perkasa@law.com	Jayapura	1982-01-05	Laki-Laki
62	SH. Sinta Dewi	2020-04-01	Hukum Konsumen (Perusahaan)	811000162	Ruko Perlindungan Konsumen	sinta.dewi@law.com	Sorong	1995-10-28	Wanita
63	SH. Firman Aji	2015-08-22	Hukum Maritim & Pelabuhan	811000163	Gedung Pelabuhan	firman.aji@law.com	Merauke	1985-04-01	Laki-Laki
64	Dr. Lia Mariana	2010-06-18	Hukum Perbuatan Melawan Hukum (PMH)	811000164	Jl. Keadilan No. 5	lia.mariana@law.com	Ternate	1980-03-12	Wanita
65	SH. Yoga Pratama	2018-09-01	Hukum Pidana (Penghinaan/Fitnah)	811000165	Komplek Kantor Hukum E/5	yoga.pratama@law.com	Palu	1992-05-16	Laki-Laki
66	SH. Diah Ayu	2022-03-25	Hukum Perkawinan Campuran	811000166	Jl. Internasional No. 3	diah.ayu@law.com	Kendari	1996-08-08	Wanita
67	Dr. Heri Susilo	2013-03-03	Hukum Sengketa Batas Wilayah	811000167	Ruko Wilayah B/2	heri.susilo@law.com	Gorontalo	1983-02-17	Laki-Laki
68	SH. Vita Amalia	2017-12-07	Hukum HAM	811000168	Gedung HAM Lt. 7	vita.amalia@law.com	Banda Aceh	1988-11-09	Wanita
69	SH. Dani Setiawan	2019-06-10	Hukum Ketenagakerjaan (Peraturan Perusahaan)	811000169	Jl. Kantor Pusat No. 1	dani.setiawan@law.com	Meulaboh	1994-05-04	Laki-Laki
70	Dr. Citra Bella	2011-01-01	Hukum Energi & ESDM	811000170	Menara Energi Lt. 10	citra.bella@law.com	Lhokseumawe	1981-10-25	Wanita
71	SH. Taufan Hidayat	2015-07-27	Hukum Paten Internasional	811000171	Ruko Paten B/9	taufan.hidayat@law.com	Sibolga	1985-03-18	Laki-Laki
72	SH. Mila Sari	2020-08-18	Hukum Sewa-Menyewa	811000172	Jl. Kontrak No. 14	mila.sari@law.com	Dumai	1993-09-28	Wanita
73	Dr. Andri Gunawan	2012-04-04	Hukum Pidana Pajak	811000173	Gedung Pajak Lt. 3	andri.gunawan@law.com	Bengkulu	1982-01-20	Laki-Laki
74	SH. Fifi Amelia	2018-01-25	Hukum M&A (Legal Opinion)	811000174	Jl. Akuisisi No. 10	fifi.amelia@law.com	Jambi	1989-12-04	Wanita
75	SH. Joko Susilo	2016-05-01	Hukum Hak Asuh Anak	811000175	Komplek Keluarga E/7	joko.susilo@law.com	Pangkalpinang	1987-06-15	Laki-Laki
76	Dr. Nia Rahma	2013-09-15	Hukum Pengadaan Barang/Jasa	811000176	Ruko Tender D/1	nia.rahma@law.com	Tanjung Pinang	1983-04-02	Wanita
77	SH. Edo Sanjaya	2021-06-20	Hukum Transportasi (Udara/Laut)	811000177	Jl. Pelabuhan No. 2	edo.sanjaya@law.com	Metro	1995-11-11	Laki-Laki
78	SH. Shinta Melati	2017-03-10	Hukum Sengketa HGB	811000178	Jl. Sertifikat No. 7	shinta.melati@law.com	Pagar Alam	1988-02-28	Wanita
79	Dr. Arya Putra	2010-11-11	Hukum Rahasia Dagang	811000179	Gedung HKI Lt. 15	arya.putra@law.com	Lubuklinggau	1979-05-09	Laki-Laki
80	SH. Tami Rahmawati	2019-08-01	Hukum Media & Penyiaran	811000180	Jl. Pers No. 12	tami.rahmawati@law.com	Prabumulih	1993-01-01	Wanita
81	SH. Deni Saputra	2015-02-25	Hukum Pidana Khusus	811000181	Komplek Hukum Pidana A/5	deni.saputra@law.com	Pematangsiantar	1986-10-17	Laki-Laki
82	Dr. Kania Dewi	2012-07-07	Hukum Waralaba (Franchise)	811000182	Ruko Bisnis Centre H/3	kania.dewi@law.com	Tebing Tinggi	1981-06-21	Wanita
83	SH. Rizal Malik	2020-10-20	Hukum Perlindungan Data Pribadi (PDP)	811000183	Jl. Data Pribadi No. 5	rizal.malik@law.com	Padang Panjang	1994-03-09	Laki-Laki
84	SH. Gita Anjani	2018-03-08	Hukum Perizinan Industri	811000184	Gedung Izin Industri	gita.anjani@law.com	Bukittinggi	1990-11-25	Wanita
85	Dr. Hendra Utama	2009-01-01	Hukum Arbitrase Internasional	811000185	Menara Arbitrase Lt. 30	hendra.utama@law.com	Sawahlunto	1975-07-13	Laki-Laki
86	SH. Puji Astuti	2016-08-10	Hukum Pembatalan Perjanjian	811000186	Jl. Perjanjian No. 1	puji.astuti@law.com	Solok	1987-05-29	Wanita
87	SH. Rian Febriansyah	2022-04-01	Hukum Pidana Korupsi	811000187	Komplek Hukum Korupsi	rian.febriansyah@law.com	Pariaman	1996-09-05	Laki-Laki
88	Dr. Indah Sari	2013-05-15	Hukum Akta Jual Beli Properti	811000188	Ruko Notaris C/4	indah.sari@law.com	Langsa	1983-04-10	Wanita
89	SH. Wisnu Aji	2017-09-29	Hukum E-Commerce & Fintech	811000189	Gedung Fintech Lt. 12	wisnu.aji@law.com	Bireuen	1988-12-01	Laki-Laki
90	SH. Dian Lestari	2020-03-20	Hukum Litigasi Hak Cipta	811000190	Jl. Kreasi No. 7	dian.lestari@law.com	Sigli	1994-07-06	Wanita
91	Dr. Bayu Sakti	2011-02-02	Hukum Keimigrasian	811000191	Ruko Imigrasi B/6	bayu.sakti@law.com	Tapaktuan	1981-01-22	Laki-Laki
92	SH. Citra Amelia	2018-10-10	Hukum Pasar Modal (Obligasi)	811000192	Menara Obligasi Lt. 8	citra.amelia@law.com	Kabanjahe	1990-06-25	Wanita
93	SH. Fajar Hidayat	2015-04-01	Hukum Pembagian Harta Bersama	811000193	Jl. Keluarga No. 9	fajar.hidayat@law.com	Sidikalang	1985-03-15	Laki-Laki
94	Dr. Gita Riana	2009-08-28	Hukum Kejahatan Perbankan	811000194	Gedung Keuangan Lt. 10	gita.riana@law.com	Rantau Prapat	1976-02-19	Wanita
95	SH. Heryanto	2014-06-06	Hukum Warisan/Wasiat	811000195	Ruko Waris C/2	heryanto@law.com	Kisaran	1984-09-08	Laki-Laki
96	SH. Dinda Paramita	2017-10-15	Hukum Pidana Umum	811000196	Jl. Kejaksaan No. 2	dinda.paramita@law.com	Lubuk Pakam	1989-05-21	Wanita
97	SH. Ivan Kusuma	2021-07-01	Hukum Bisnis	811000197	Komplek Niaga B/1	ivan.kusuma@law.com	Binjai	1995-12-30	Laki-Laki
98	Dr. Lia Setyawati	2014-01-20	Hukum HKI	811000198	Jl. Kreatif No. 10	lia.setyawati@law.com	Stabat	1984-08-11	Wanita
99	SH. Miko Sanjaya	2016-02-29	Hukum Keluarga	811000199	Ruko Keluarga K/3	miko.sanjaya@law.com	Gunung Sitoli	1986-04-04	Laki-Laki
100	SH. Nia Kurnia	2020-11-05	Hukum Korporasi	811000200	Gedung Bisnis Centre	nia.kurnia@law.com	Teluk Kuantan	1994-02-14	Wanita
\.


--
-- TOC entry 4878 (class 0 OID 24821)
-- Dependencies: 218
-- Data for Name: staf_administrasi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staf_administrasi (staf_id, nama_staf, tgl_bgb_staf, no_tlp_staf, email_staf, tgl_lhr_staf, gender_staf, tp_lhr_staf, alamat_staf) FROM stdin;
1	Dimas Aditya	2024-01-15	8511100001	dimas.a@adm.com	1998-05-20	Laki-Laki	Surabaya	Jl. Karah Agung No. 5
2	Yuwanda Sari	2024-01-15	8511100002	yuwanda.s@adm.com	1995-11-12	Wanita	Jakarta	Komplek Permai Blok B/2
3	Reza Pratama	2024-02-01	8511100003	reza.p@adm.com	1990-03-01	Laki-Laki	Bandung	Perum. Indah No. 10
4	Sinta Dewi	2024-02-01	8511100004	sinta.d@adm.com	1992-08-25	Wanita	Malang	Jl. Pahlawan No. 4
5	Taufik Huda	2024-03-10	8511100005	taufik.h@adm.com	1996-04-17	Laki-Laki	Semarang	Ruko Niaga Sentral No. 3
6	Nina Kirana	2024-03-10	8511100006	nina.k@adm.com	1993-10-30	Wanita	Yogyakarta	Jl. Veteran No. 15
7	Adi Wibowo	2024-04-05	8511100007	adi.w@adm.com	1991-01-18	Laki-Laki	Medan	Gg. Rajawali 2A
8	Mila Sari	2024-04-05	8511100008	mila.s@adm.com	1997-06-05	Wanita	Palembang	Dusun Sejahtera RT 01
9	Eko Cahyono	2024-05-20	8511100009	eko.c@adm.com	1994-02-14	Laki-Laki	Makassar	Jl. Merak No. 20
10	Putri Amelia	2024-05-20	8511100010	putri.a@adm.com	1999-09-03	Wanita	Solo	Komplek Griya Asri C/5
11	Rizky Akbar	2024-06-15	8511100011	rizky.a@adm.com	1998-05-01	Laki-Laki	Denpasar	Jl. Mawar Indah No. 3
12	Dewi Susanti	2024-06-15	8511100012	dewi.s@adm.com	1995-11-29	Wanita	Padang	Perum. Damai Blok F/9
13	Fahmi Rasyid	2024-07-01	8511100013	fahmi.r@adm.com	1990-07-22	Laki-Laki	Pekanbaru	Jl. Raya Utara Km 3
14	Lina Mariana	2024-07-01	8511100014	lina.m@adm.com	1993-01-10	Wanita	Balikpapan	Ruko Sentosa Blok B/3
15	Hari Santoso	2024-08-10	8511100015	hari.s@adm.com	1997-12-05	Laki-Laki	Manado	Jl. Pahlawan No. 45
16	Ika Pertiwi	2024-08-10	8511100016	ika.p@adm.com	1994-09-19	Wanita	Pontianak	Gg. Kenanga No. 8
17	Joko Firmansyah	2024-09-05	8511100017	joko.f@adm.com	1991-06-28	Laki-Laki	Samarinda	Jl. Rajawali No. 12
18	Kiki Lestari	2024-09-05	8511100018	kiki.l@adm.com	1995-03-03	Wanita	Banjarmasin	Ruko Niaga Jaya No. 1
19	Lukman Hakim	2024-10-01	8511100019	lukman.h@adm.com	1992-10-06	Laki-Laki	Batam	Jl. Veteran No. 7
20	Mira Indah	2024-10-01	8511100020	mira.i@adm.com	1996-12-24	Wanita	Lampung	Dusun Damai RT 01
21	Naufal Azis	2024-11-15	8511100021	naufal.a@adm.com	1993-08-11	Laki-Laki	Cirebon	Komplek Permai G/1
22	Oktavia Sari	2024-11-15	8511100022	oktavia.s@adm.com	1997-07-04	Wanita	Bogor	Jl. Tentara Pelajar 1A
23	Pandu Winata	2024-12-01	8511100023	pandu.w@adm.com	1994-04-15	Laki-Laki	Depok	Jl. Pramuka No. 2
24	Ria Amelia	2024-12-01	8511100024	ria.a@adm.com	1990-03-29	Wanita	Bekasi	Gg. Durian 5
25	Sigit Prasetya	2025-01-05	8511100025	sigit.p@adm.com	1995-11-18	Laki-Laki	Tangerang	Perum. Harapan Jaya Blok L
26	Tina Agustina	2025-01-05	8511100026	tina.a@adm.com	1998-06-03	Wanita	Cimahi	Jl. Kemanggisan No. 30
27	Umar Bakri	2025-02-10	8511100027	umar.b@adm.com	1993-07-06	Laki-Laki	Garut	Ruko Gading Serpong
28	Vina Dewi	2025-02-10	8511100028	vina.d@adm.com	1996-01-01	Wanita	Tasikmalaya	Jl. Veteran Lama No. 9
29	Wawan Setiawan	2025-03-01	8511100029	wawan.s@adm.com	1992-05-21	Laki-Laki	Subang	Dusun Makmur RT 05
30	Yanti Sari	2025-03-01	8511100030	yanti.s@adm.com	1994-11-11	Wanita	Purwokerto	Jl. Gatot Subroto No. 2
31	Zainal Abidin	2025-04-05	8511100031	zainal.a@adm.com	1991-08-01	Laki-Laki	Cilacap	Komplek Mega Raya H/4
32	Anita Rahayu	2025-04-05	8511100032	anita.r@adm.com	1995-02-28	Wanita	Tegal	Gg. Delima 10
33	Bambang Eka	2025-05-20	8511100033	bambang.e@adm.com	1990-10-18	Laki-Laki	Pekalongan	Jl. Mataram No. 1
34	Cintia Dewi	2025-05-20	8511100034	cintia.d@adm.com	1996-07-07	Wanita	Kudus	Perum. Sejahtera B/20
35	Deni Kurniawan	2025-06-01	8511100035	deni.k@adm.com	1993-01-24	Laki-Laki	Jepara	Jl. Demak No. 15
36	Elsa Fitri	2025-06-01	8511100036	elsa.f@adm.com	1997-11-02	Wanita	Pati	Ruko Bisnis Centre No. 5
37	Fajar Aditya	2025-07-15	8511100037	fajar.a@adm.com	1994-05-11	Laki-Laki	Tuban	Jl. Kartini No. 4
38	Gita Purnama	2025-07-15	8511100038	gita.p@adm.com	1999-09-06	Wanita	Kediri	Dusun Tentrem RT 02
39	Hadi Prasetyo	2025-08-01	8511100039	hadi.p@adm.com	1991-02-17	Laki-Laki	Madiun	Komplek Perdana L/7
40	Indah Lestari	2025-08-01	8511100040	indah.l@adm.com	1995-04-21	Wanita	Ngawi	Jl. Yos Sudarso No. 3
41	Joko Susilo	2025-09-10	8511100041	joko.s@adm.com	1992-11-02	Laki-Laki	Bojonegoro	Gg. Anggrek 6
42	Kartika Dewi	2025-09-10	8511100042	kartika.d@adm.com	1996-03-29	Wanita	Gresik	Perum. Jaya Abadi G/15
43	Lukman Nulhakim	2025-10-01	8511100043	lukman.n@adm.com	1993-08-05	Laki-Laki	Sidoarjo	Jl. Ahmad Yani No. 50
44	Maya Sari	2025-10-01	8511100044	maya.s@adm.com	1997-04-04	Wanita	Mojokerto	Ruko Delta Raya No. 10
45	Niko Pratama	2025-11-15	8511100045	niko.p@adm.com	1994-07-06	Laki-Laki	Jombang	Dusun Damar RT 04
46	Puspa Melati	2025-11-15	8511100046	puspa.m@adm.com	1998-02-14	Wanita	Pasuruan	Komplek Sejati V/8
47	Rafi Ahmad	2025-12-01	8511100047	rafi.a@adm.com	1995-09-01	Laki-Laki	Probolinggo	Jl. Gajah Mada No. 9
48	Siska Handayani	2025-12-01	8511100048	siska.h@adm.com	1999-05-01	Wanita	Lumajang	Gg. Teratai 2
49	Tegar Firmansyah	2026-01-05	8511100049	tegar.f@adm.com	1996-12-01	Laki-Laki	Jember	Perum. Makmur Abadi K/3
50	Ulfa Rahma	2026-01-05	8511100050	ulfa.r@adm.com	1993-06-17	Wanita	Banyuwangi	Jl. Mastrip No. 100
51	Vito Ganesha	2026-02-10	8511100051	vito.g@adm.com	1990-07-22	Laki-Laki	Denpasar	Jl. A Yani No. 1
52	Wulan Sari	2026-02-10	8511100052	wulan.s@adm.com	1995-01-10	Wanita	Mataram	Komplek Bali Indah J/2
53	Yusuf Mansur	2026-03-01	8511100053	yusuf.m@adm.com	1998-12-05	Laki-Laki	Kupang	Ruko Nusa Dua No. 7
54	Zahra Khairani	2026-03-01	8511100054	zahra.k@adm.com	1994-04-14	Wanita	Ambon	Jl. Sumbawa No. 15
55	Adi Nugroho	2026-04-05	8511100055	adi.n@adm.com	1991-07-06	Laki-Laki	Jayapura	Perum. Serayu Blok D/1
56	Bela Ayu	2026-04-05	8511100056	bela.a@adm.com	1996-02-28	Wanita	Sorong	Gg. Kamboja 4
57	Cahya Puspita	2026-05-20	8511100057	cahya.p@adm.com	1992-10-18	Laki-Laki	Merauke	Jl. Papua No. 33
58	Doni Satria	2026-05-20	8511100058	doni.s@adm.com	1997-07-07	Wanita	Ternate	Dusun Timur RT 06
59	Eka Sari	2026-06-01	8511100059	eka.s@adm.com	1993-01-24	Laki-Laki	Palu	Jl. Sulawesi No. 5
60	Fahmi Gani	2026-06-01	8511100060	fahmi.g@adm.com	1998-11-02	Wanita	Kendari	Komplek Perdana K/1
61	Gita Permana	2026-07-15	8511100061	gita.p@adm.com	1995-05-11	Laki-Laki	Gorontalo	Jl. Hasanuddin No. 8
62	Hasan Basri	2026-07-15	8511100062	hasan.b@adm.com	1999-09-06	Wanita	Banda Aceh	Ruko Niaga Sentra Blok A
63	Intan Permata	2026-08-01	8511100063	intan.p@adm.com	1996-02-17	Laki-Laki	Meulaboh	Jl. Teuku Umar No. 10
64	Jamaludin	2026-08-01	8511100064	jamaludin@adm.com	1993-04-21	Wanita	Lhokseumawe	Gg. Dahlia 9
65	Kania Dewi	2026-09-10	8511100065	kania.d@adm.com	1990-11-02	Laki-Laki	Sibolga	Perum. Harapan Sentosa F/3
66	Lutfi Hakim	2026-09-10	8511100066	lutfi.h@adm.com	1997-03-29	Wanita	Dumai	Jl. Thamrin No. 4
67	Murniati	2026-10-01	8511100067	murniati@adm.com	1994-08-05	Laki-Laki	Bengkulu	Dusun Damai RT 07
68	Niko Aditama	2026-10-01	8511100068	niko.a@adm.com	1998-04-04	Wanita	Jambi	Komplek Abadi H/12
69	Oktavia Sari	2026-11-15	8511100069	oktavia.s@adm.com	1995-07-06	Laki-Laki	Pangkalpinang	Jl. Sumatera No. 2
70	Pandu Winata	2026-11-15	8511100070	pandu.w@adm.com	1999-02-14	Wanita	Tanjung Pinang	Ruko Pusat Bisnis No. 6
71	Qonita Nur	2026-12-01	8511100071	qonita.n@adm.com	1996-09-01	Laki-Laki	Metro	Jl. Jawa No. 18
72	Raja Firmansyah	2026-12-01	8511100072	raja.f@adm.com	1993-05-01	Wanita	Pagar Alam	Gg. Anggrek 8
73	Susi Susanti	2027-01-05	8511100073	susi.s@adm.com	1990-12-01	Laki-Laki	Lubuklinggau	Perum. Barito Raya C/5
74	Teguh Prakoso	2027-01-05	8511100074	teguh.p@adm.com	1995-06-17	Wanita	Prabumulih	Jl. Kalimantan No. 7
75	Ulfah Kania	2027-02-10	8511100075	ulfah.k@adm.com	1998-07-22	Laki-Laki	Pematangsiantar	Dusun Sejahtera RT 08
76	Vian Pratama	2027-02-10	8511100076	vian.p@adm.com	1994-01-10	Wanita	Tebing Tinggi	Komplek Elite K/10
77	Winda Amelia	2027-03-01	8511100077	winda.a@adm.com	1991-12-05	Laki-Laki	Padang Panjang	Jl. Sumatera Barat No. 1
78	Yoga Saputra	2027-03-01	8511100078	yoga.s@adm.com	1996-04-14	Wanita	Bukittinggi	Ruko Niaga Utama Blok C
79	Zulfa Rahma	2027-04-05	8511100079	zulfa.r@adm.com	1992-07-06	Laki-Laki	Sawahlunto	Jl. Minangkabau No. 22
80	Aditya Nugraha	2027-04-05	8511100080	aditya.n@adm.com	1997-02-28	Wanita	Solok	Perum. Sentosa Baru E/7
81	Ahmad Maulana	2027-05-20	8511100081	ahmad.m@adm.com	1993-10-18	Laki-Laki	Pariaman	Gg. Anggrek 1
82	Bunga Lestari	2027-05-20	8511100082	bunga.l@adm.com	1998-07-07	Wanita	Langsa	Jl. Aceh Tengah No. 5
83	Citra Dewi	2027-06-01	8511100083	citra.d@adm.com	1990-11-02	Laki-Laki	Bireuen	Komplek Sehati R/3
84	Dedy Susanto	2027-06-01	8511100084	dedy.s@adm.com	1995-04-21	Wanita	Sigli	Dusun Baru RT 09
85	Elsa Fatmawati	2027-07-15	8511100085	elsa.f@adm.com	1992-11-02	Laki-Laki	Tapaktuan	Ruko Niaga Sentral No. 11
86	Fajar Ramadhan	2027-07-15	8511100086	fajar.r@adm.com	1996-03-29	Wanita	Kabanjahe	Jl. Danau Toba No. 12
87	Gita Ayu	2027-08-01	8511100087	gita.a@adm.com	1993-08-05	Laki-Laki	Sidikalang	Gg. Melati 7
88	Hadi Kusuma	2027-08-01	8511100088	hadi.k@adm.com	1997-04-04	Wanita	Rantau Prapat	Perum. Asri Indah Q/4
89	Indah Sari	2027-09-10	8511100089	indah.s@adm.com	1994-07-06	Laki-Laki	Kisaran	Jl. Bakti Sosial No. 3
90	Joko Santoso	2027-09-10	8511100090	joko.s@adm.com	1998-02-14	Wanita	Lubuk Pakam	Dusun Makmur RT 10
91	Kartika Jaya	2027-10-01	8511100091	kartika.j@adm.com	1995-09-01	Laki-Laki	Binjai	Komplek Elite 1/15
92	Lukman Hakim	2027-10-01	8511100092	lukman.h@adm.com	1999-05-01	Wanita	Stabat	Jl. Merak No. 90
93	Maya Silalahi	2027-11-15	8511100093	maya.s@adm.com	1996-12-01	Laki-Laki	Gunung Sitoli	Ruko Bisnis Centre 12A
94	Nova Anggraini	2027-11-15	8511100094	nova.a@adm.com	1993-06-17	Wanita	Teluk Kuantan	Jl. Imam Bonjol No. 4
95	Oni Wijaya	2027-12-01	8511100095	oni.w@adm.com	1990-07-22	Laki-Laki	Bagan Siapi-api	Gg. Nangka 3
96	Putri Kemala	2027-12-01	8511100096	putri.k@adm.com	1995-01-10	Wanita	Rengat	Perum. Harapan Sentosa F/8
97	Qori Akbar	2028-01-05	8511100097	qori.a@adm.com	1998-12-05	Laki-Laki	Tembilahan	Jl. Riau No. 15
98	Rina Puspita	2028-01-05	8511100098	rina.p@adm.com	1994-04-14	Wanita	Muara Enim	Dusun Bahagia RT 11
99	Slamet Riyadi	2028-02-10	8511100099	slamet.r@adm.com	1991-07-06	Laki-Laki	Lahat	Komplek Elok K/20
100	Tania Amalia	2028-02-10	8511100100	tania.a@adm.com	1996-02-28	Wanita	Baturaja	Jl. Sumatera Selatan No. 8
\.


--
-- TOC entry 4731 (class 2606 OID 24863)
-- Name: layanan_hukum Layanan_Hukum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layanan_hukum
    ADD CONSTRAINT "Layanan_Hukum_pkey" PRIMARY KEY (lh_id);


--
-- TOC entry 4727 (class 2606 OID 24849)
-- Name: dokumen_hukum dokumen_hukum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dokumen_hukum
    ADD CONSTRAINT dokumen_hukum_pkey PRIMARY KEY (dokumen_id);


--
-- TOC entry 4725 (class 2606 OID 24841)
-- Name: kasus kasus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kasus
    ADD CONSTRAINT kasus_pkey PRIMARY KEY (kasus_id);


--
-- TOC entry 4723 (class 2606 OID 24834)
-- Name: klien klien_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.klien
    ADD CONSTRAINT klien_pkey PRIMARY KEY (nik);


--
-- TOC entry 4729 (class 2606 OID 24856)
-- Name: penagihan penagihan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penagihan
    ADD CONSTRAINT penagihan_pkey PRIMARY KEY (penagihan_id);


--
-- TOC entry 4719 (class 2606 OID 24814)
-- Name: pengacara pengacara_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pengacara
    ADD CONSTRAINT pengacara_pkey PRIMARY KEY (pengacara_id);


--
-- TOC entry 4721 (class 2606 OID 24827)
-- Name: staf_administrasi staf_administrasi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staf_administrasi
    ADD CONSTRAINT staf_administrasi_pkey PRIMARY KEY (staf_id);


-- Completed on 2025-10-24 21:22:13

--
-- PostgreSQL database dump complete
--

\unrestrict SjISaguMUJ3SpyWA5k3hSiXuKTGRRBvyfRa3z52bKrArPvecoRzG6q0jC6pi1eW

