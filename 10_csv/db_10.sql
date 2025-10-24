--
-- PostgreSQL database dump
--

\restrict TdE6s6g8hMDL4n1qC4DwodXGihfzW6y4pZpp0lIDsY65ArRjPUjLY1L1jiXuGkt

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-24 21:24:16

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
-- TOC entry 4889 (class 1262 OID 25027)
-- Name: uts_10; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE uts_10 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';


ALTER DATABASE uts_10 OWNER TO postgres;

\unrestrict TdE6s6g8hMDL4n1qC4DwodXGihfzW6y4pZpp0lIDsY65ArRjPUjLY1L1jiXuGkt
\connect uts_10
\restrict TdE6s6g8hMDL4n1qC4DwodXGihfzW6y4pZpp0lIDsY65ArRjPUjLY1L1jiXuGkt

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
-- TOC entry 217 (class 1259 OID 25079)
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
-- TOC entry 218 (class 1259 OID 25084)
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
-- TOC entry 219 (class 1259 OID 25089)
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
-- TOC entry 220 (class 1259 OID 25094)
-- Name: layanan_hukum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.layanan_hukum (
    lh_id integer NOT NULL,
    jenis_lh text,
    harga_lh numeric
);


ALTER TABLE public.layanan_hukum OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 25099)
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
-- TOC entry 222 (class 1259 OID 25104)
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
-- TOC entry 223 (class 1259 OID 25109)
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
-- TOC entry 4877 (class 0 OID 25079)
-- Dependencies: 217
-- Data for Name: dokumen_hukum; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dokumen_hukum (dokumen_id, nama_dokumen, pengacara_id, kasus_id, tanggal_upload, staf_id, url_doc) FROM stdin;
9001	Surat Kuasa Klien 1001	2	5001	2024-02-12	1	https://doc.com/sk5001
9002	Berkas Bukti Pidana	1	5002	2024-03-25	2	https://doc.com/bb5002
9003	Draf Perjanjian Awal	3	5003	2024-05-10	3	https://doc.com/dpa5003
9004	Putusan Mediasi Waris	4	5004	2024-08-30	4	https://doc.com/pmw5004
9005	Dokumen Pendaftaran Merek	3	5005	2024-08-05	5	https://doc.com/dpm5005
9006	Gugatan PHK	8	5006	2024-09-15	6	https://doc.com/gphk5006
9007	Laporan Audit Awal	7	5007	2024-12-05	7	https://doc.com/laa5007
9008	Surat Panggilan Pengadilan	9	5008	2025-01-25	8	https://doc.com/spp5008
9009	Tuntutan Ganti Rugi	6	5009	2025-04-10	9	https://doc.com/tgr5009
9010	Memori Banding PTUN	5	5010	2025-06-10	10	https://doc.com/mbp5010
\.


--
-- TOC entry 4878 (class 0 OID 25084)
-- Dependencies: 218
-- Data for Name: kasus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kasus (kasus_id, perkara_kasus, deskripsi_kasus, nik, pengacara_id, staf_id, tgl_daftar, tgl_mulai, tgl_selesai, hasil, status_kasus) FROM stdin;
5001	Perceraian	Gugatan cerai tanpa sengketa harta	1001	2	1	2024-02-10	2024-02-15	2024-03-20	Damai	Selesai
5002	Narkotika	Pembelaan kasus penyalahgunaan	1002	1	2	2024-03-05	2024-03-20	2024-10-10	Kalah	Selesai
5003	Wanprestasi	Sengketa kontrak pembangunan	1003	3	3	2024-04-15	2024-05-01	\N	Proses	Proses
5004	Sengketa Waris	Mediasi pembagian harta warisan	1004	4	4	2024-06-01	2024-06-15	2024-08-25	Menang	Selesai
5005	HAKI	Pendaftaran merk dagang baru	1005	3	5	2024-07-20	2024-08-01	\N	Proses	Proses
5006	PHK	Gugatan pemutusan hubungan kerja	1006	8	6	2024-09-08	2024-09-10	2024-12-15	Menang	Selesai
5007	Merger & Akuisisi	Uji tuntas hukum untuk akuisisi	1007	7	7	2024-11-20	2024-12-01	\N	Proses	Proses
5008	Sengketa Tanah	Gugatan perdata kepemilikan tanah	1008	9	8	2025-01-05	2025-01-20	\N	Pending	Pending
5009	Perlindungan Konsumen	Tuntutan ganti rugi cacat produk	1009	6	9	2025-03-17	2025-04-01	\N	Proses	Proses
5010	Sengketa Izin	Permohonan banding PTUN	1010	5	10	2025-05-29	2025-06-05	\N	Proses	Proses
\.


--
-- TOC entry 4879 (class 0 OID 25089)
-- Dependencies: 219
-- Data for Name: klien; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.klien (nik, nama_klien, tgl_daftar, no_tlp_k, email_k, alamat_k, gender_k, tmpt_tgl_lhr, tgl_lhr_k, jenis_lh) FROM stdin;
1001	Bapak Joko	2024-02-10	81145252123	joko@mail.com	Jl. Mawar Indah 1	Laki-Laki	Jakarta	1970-05-20	1
1002	Ibu Dian	2024-03-05	87145252456	dian@net.com	Komp. Griya Asri	Wanita	Surabaya	1985-11-01	2
1003	PT. Maju Terus	2024-04-15	2145252789	ptmt@bisnis.co	Gedung A Lantai 5	Laki-Laki	Bandung	1999-01-01	3
1004	Bapak Heri	2024-06-01	81145252012	heri@mail.net	Jl. Pelita No. 10	Laki-Laki	Semarang	1975-09-25	4
1005	CV. Sinar Jaya	2024-07-20	85145252345	cvsj@bisnis.net	Ruko Sentosa 3	Laki-Laki	Medan	2005-03-10	5
1006	Ibu Eva	2024-09-08	81145252678	eva@net.org	Gang Kecil 8	Wanita	Yogyakarta	1980-12-12	6
1007	PT. Global Tech	2024-11-20	2145252901	ptgt@tech.com	Menara B, Suite 12	Laki-Laki	Denpasar	2001-06-05	7
1008	Bapak Bambang	2025-01-05	81145252234	bambang@mail.id	Jl. Setia Budi	Laki-Laki	Palembang	1965-04-03	8
1009	Ibu Cici	2025-03-17	87145252567	cici@net.id	Perumahan Damai 4	Wanita	Makassar	1990-08-28	9
1010	Bapak Fajar	2025-05-29	81145252890	fajar@mail.co	Jl. Utama No. 15	Laki-Laki	Pontianak	1972-02-14	10
\.


--
-- TOC entry 4880 (class 0 OID 25094)
-- Dependencies: 220
-- Data for Name: layanan_hukum; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.layanan_hukum (lh_id, jenis_lh, harga_lh) FROM stdin;
1	Konsultasi Hukum Keluarga	750000
2	Jasa Advokat Kasus Pidana	35000000
3	Penyusunan Kontrak Bisnis	4500000
4	Pendampingan Mediasi Properti	8000000
5	Perizinan Usaha Dagang	3000000
6	Sengketa Ketenagakerjaan	12000000
7	Audit Hukum Perusahaan	15000000
8	Gugatan Perdata Wanprestasi	40000000
9	Hukum Perlindungan Konsumen	6000000
10	Banding Hukum Tata Negara	22000000
\.


--
-- TOC entry 4881 (class 0 OID 25099)
-- Dependencies: 221
-- Data for Name: penagihan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.penagihan (penagihan_id, nik, lh_id, kasus_id, staf_id, tgl_penagihan, status_penagihan, tgl_bayar, biaya_layanan_hukum, biaya_admin, biaya_pendaftaranpgd, biaya_salinanpts) FROM stdin;
7001	1001	1	5001	1	2024-02-15	Lunas	2024-02-15	30000	150000	20000	750000
7002	1002	2	5002	2	2024-03-10	Belum Lunas	\N	50000	5000000	50000	35000000
7003	1003	3	5003	3	2024-04-20	Lunas	2024-04-25	40000	0	0	4500000
7004	1004	4	5004	4	2024-06-05	Lunas	2024-06-07	20000	300000	10000	8000000
7005	1005	5	5005	5	2024-07-25	Lunas	2024-08-01	50000	0	0	3000000
7006	1006	6	5006	6	2024-09-10	Lunas	2024-09-15	30000	120000	20000	12000000
7007	1007	7	5007	7	2024-11-25	Belum Lunas	\N	50000	0	0	15000000
7008	1008	8	5008	8	2025-01-10	Lunas	2025-01-10	20000	450000	30000	40000000
7009	1009	9	5009	9	2025-03-20	Lunas	2025-04-05	30000	100000	10000	6000000
7010	1010	10	5010	10	2025-06-01	Belum Lunas	\N	50000	250000	20000	22000000
\.


--
-- TOC entry 4882 (class 0 OID 25104)
-- Dependencies: 222
-- Data for Name: pengacara; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pengacara (pengacara_id, nama_pengacara, tgl_bgb_pca, spesialisasi, no_tlp_pca, alamat_pengacara, email_pengacara, tempat_lahir_pca, tgl_lhr_pca, gender_pengacara) FROM stdin;
1	Dr. Rendra Kusuma	2024-01-05	Hukum Pidana	81112345101	Jl. Sudirman 1A	rendra@law.com	Jakarta	1978-08-15	Laki-Laki
2	S.H. Maya Sari	2023-11-12	Hukum Keluarga	81212345102	Perum Elok D2	maya@law.com	Semarang	1985-04-20	Wanita
3	S.H. Taufik Hidayat	2024-04-01	Hukum Bisnis	81312345103	Jl. Merdeka Raya 5	taufik@law.com	Surabaya	1980-09-10	Laki-Laki
4	S.H. Nia Paramita	2024-06-25	Hukum Properti	81412345104	Komplek Puri B5	nia@law.com	Bandung	1982-12-05	Wanita
5	S.H. Wisnu Aji	2025-01-01	Hukum Tata Negara	81512345105	Jl. Cendana No. 9	wisnu@law.com	Yogyakarta	1975-06-30	Laki-Laki
6	S.H. Dewi Lestari	2024-08-18	Hukum Lingkungan	81612345106	Desa Hijau No. 20	dewi@law.com	Malang	1988-02-14	Wanita
7	S.H. Rio Firmansyah	2024-10-03	Hukum Kepailitan	81712345107	Jl. Veteran 12	rio@law.com	Denpasar	1983-11-28	Laki-Laki
8	S.H. Citra Kirana	2025-03-11	Hukum Ketenagakerjaan	81812345108	Apartemen Tower A	citra@law.com	Palembang	1991-07-07	Wanita
9	S.H. Guntur Jaya	2024-05-14	Hukum Perdata	81912345109	Gang Mawar No. 4	guntur@law.com	Balikpapan	1986-01-01	Laki-Laki
10	S.H. Hana Maulida	2024-02-28	Hukum IT	82012345110	Jl. Kebon Raya 7	hana@law.com	Pekanbaru	1993-09-29	Wanita
\.


--
-- TOC entry 4883 (class 0 OID 25109)
-- Dependencies: 223
-- Data for Name: staf_administrasi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staf_administrasi (staf_id, nama_staf, tgl_bgb_staf, no_tlp_staf, email_staf, tgl_lhr_staf, gender_staf, tp_lhr_staf, alamat_staf) FROM stdin;
1	Fitri Maharani	2024-03-01	8121234111	fitri@law.com	1995-07-12	Wanita	Bandung	Jl. Raya Selatan No. 5
2	Ahmad Ramadhan	2024-05-20	8781234222	ahmad@law.com	1998-01-25	Laki-Laki	Surabaya	Perumahan Indah Blok A
3	Sinta Dewi	2024-09-15	8571234333	sinta@law.com	1993-11-03	Wanita	Jakarta	Komplek Cempaka Baru
4	Rizky Pratama	2025-01-10	8131234444	rizky@law.com	1990-04-18	Laki-Laki	Medan	Gang Damai No. 10
5	Lia Amelia	2025-04-05	8961234555	lia@law.com	1997-09-08	Wanita	Semarang	Jl. Pahlawan Blok F
6	Bima Satria	2024-07-22	8111234666	bima@law.com	1989-05-01	Laki-Laki	Yogyakarta	Desa Mandiri No. 3
7	Dina Kartika	2024-02-14	8151234777	dina@law.com	1996-02-28	Wanita	Denpasar	Jl. Sunset No. 8
8	Eko Nugroho	2025-02-08	8161234888	eko@law.com	1991-10-10	Laki-Laki	Palembang	Komplek Citra Asri
9	Rina Wulandari	2024-11-29	8171234999	rina@law.com	1994-06-19	Wanita	Makassar	Jl. Pelabuhan Lama
10	Jaka Lesmana	2024-06-18	8181234000	jaka@law.com	1992-03-22	Laki-Laki	Pontianak	Gang Sejahtera 1
\.


--
-- TOC entry 4725 (class 2606 OID 25115)
-- Name: layanan_hukum Layanan_Hukum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layanan_hukum
    ADD CONSTRAINT "Layanan_Hukum_pkey" PRIMARY KEY (lh_id);


--
-- TOC entry 4719 (class 2606 OID 25117)
-- Name: dokumen_hukum dokumen_hukum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dokumen_hukum
    ADD CONSTRAINT dokumen_hukum_pkey PRIMARY KEY (dokumen_id);


--
-- TOC entry 4721 (class 2606 OID 25119)
-- Name: kasus kasus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kasus
    ADD CONSTRAINT kasus_pkey PRIMARY KEY (kasus_id);


--
-- TOC entry 4723 (class 2606 OID 25121)
-- Name: klien klien_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.klien
    ADD CONSTRAINT klien_pkey PRIMARY KEY (nik);


--
-- TOC entry 4727 (class 2606 OID 25123)
-- Name: penagihan penagihan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penagihan
    ADD CONSTRAINT penagihan_pkey PRIMARY KEY (penagihan_id);


--
-- TOC entry 4729 (class 2606 OID 25125)
-- Name: pengacara pengacara_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pengacara
    ADD CONSTRAINT pengacara_pkey PRIMARY KEY (pengacara_id);


--
-- TOC entry 4731 (class 2606 OID 25127)
-- Name: staf_administrasi staf_administrasi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staf_administrasi
    ADD CONSTRAINT staf_administrasi_pkey PRIMARY KEY (staf_id);


--
-- TOC entry 4890 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


-- Completed on 2025-10-24 21:24:16

--
-- PostgreSQL database dump complete
--

\unrestrict TdE6s6g8hMDL4n1qC4DwodXGihfzW6y4pZpp0lIDsY65ArRjPUjLY1L1jiXuGkt

