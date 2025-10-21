import pandas as pd
from faker import Faker
import random
from datetime import datetime, timedelta

# --- Konfigurasi ---
fake = Faker('id_ID')
NUM_RECORDS = 1000 # Jumlah data yang diminta
START_DATE = datetime(2024, 1, 1)
END_DATE = datetime(2025, 12, 31)

# --- Fungsi Bantuan ---
def generate_random_date(start_date, end_date):
    """Menghasilkan tanggal acak antara dua tanggal (memastikan start <= end)."""
    # Menghindari error jika start_date >= end_date
    if start_date >= end_date:
        return end_date
        
    time_between_dates = end_date - start_date
    days_between_dates = time_between_dates.days
    
    # Menghindari error jika days_between_dates <= 0
    if days_between_dates <= 0:
        return start_date # Kembalikan tanggal awal jika rentang 0 atau negatif
        
    random_number_of_days = random.randrange(days_between_dates)
    return start_date + timedelta(days=random_number_of_days)

def safe_strftime(date_obj):
    """Mengubah objek datetime menjadi string YYYY-MM-DD, atau None jika input kosong."""
    return date_obj.strftime('%Y-%m-%d') if date_obj else None

# ----------------------------------------------------
# --- 1. LAYANAN_HUKUM (1000 Jenis Unik) ---
# ... (Kode ini tidak berubah) ...
# ----------------------------------------------------
layanan_hukum_data = []
jenis_layanan_unik = set()

# Buat 1000 jenis layanan hukum yang unik
base_types = ["Konsultasi", "Jasa Advokat", "Penyusunan Kontrak", "Pendampingan Mediasi", "Sengketa", "Perizinan"]
sub_types = ["Pidana", "Perdata", "Keluarga", "Bisnis", "Properti", "Pajak", "Hak Cipta", "Lingkungan", "Internasional"]

while len(jenis_layanan_unik) < NUM_RECORDS:
    if len(jenis_layanan_unik) < len(base_types) * len(sub_types):
        jenis = f"{random.choice(base_types)} {random.choice(sub_types)}"
    else:
        jenis = f"{random.choice(base_types)} {fake.word().title()} Khusus {len(jenis_layanan_unik) + 1}"
    
    jenis_layanan_unik.add(jenis)

jenis_layanan_list = list(jenis_layanan_unik)

for i in range(NUM_RECORDS):
    jenis = jenis_layanan_list[i]
    if "Konsultasi" in jenis:
        harga = random.randint(500000, 2000000)
    elif "Advokat" in jenis or "Sengketa" in jenis:
        harga = random.randint(5000000, 50000000)
    else:
        harga = random.randint(1000000, 10000000)
        
    layanan_hukum_data.append({
        'LH_ID': i + 1,
        'Jenis_LH': jenis,
        'Harga_LH': harga
    })

df_layanan_hukum = pd.DataFrame(layanan_hukum_data)
df_layanan_hukum.to_csv('Layanan_Hukum_Dummy_1000.csv', index=False)
lh_ids = df_layanan_hukum['LH_ID'].tolist()

# ----------------------------------------------------
# --- 2. STAF_ADMINISTRASI (1000 Staf) ---
# ... (Kode ini tidak berubah) ...
# ----------------------------------------------------
staf_data = []
for i in range(1, NUM_RECORDS + 1):
    tgl_lahir = generate_random_date(datetime(1985, 1, 1), datetime(2005, 12, 31))
    tgl_bergabung = generate_random_date(START_DATE, END_DATE)
    staf_data.append({
        'Staf_ID': i,
        'Nama_Staf': fake.name(),
        'Tgl_Bgb_Staf': safe_strftime(tgl_bergabung),
        'No_Tlp_Staf': fake.phone_number()[:15],
        'Email_Staf': f"staf{i}_{fake.slug()}@{fake.domain_name()}",
        'Tgl_lhr_Staf': safe_strftime(tgl_lahir),
        'Gender_Staf': random.choice(['Laki-Laki', 'Wanita']),
        'Tp_Lhr_Staf': fake.city(),
        'Alamat_Staf': fake.address().replace('\n', ', ')
    })

df_staf = pd.DataFrame(staf_data)
df_staf.to_csv('Staf_Administrasi_Dummy_1000.csv', index=False)
staf_ids = df_staf['Staf_ID'].tolist()

# ----------------------------------------------------
# --- 3. PENGACARA (1000 Pengacara) ---
# ... (Kode ini tidak berubah) ...
# ----------------------------------------------------
pengacara_data = []
spesialisasi_list = ['Hukum Perdata', 'Hukum Pidana', 'Hukum Keluarga', 'Hukum Bisnis', 'Hukum Tata Negara', 'Hukum Properti', 'Hukum Pajak', 'Hukum Kepailitan']
for i in range(1, NUM_RECORDS + 1):
    tgl_lahir = generate_random_date(datetime(1970, 1, 1), datetime(1995, 12, 31))
    tgl_bergabung = generate_random_date(START_DATE, END_DATE)
    pengacara_data.append({
        'Pengacara_ID': i,
        'Nama_Pengacara': fake.name(),
        'Tgl_Bgb_Pca': safe_strftime(tgl_bergabung),
        'Spesialisasi': random.choice(spesialisasi_list),
        'No_Tlp_Pca': fake.phone_number()[:15],
        'Alamat_Pengacara': fake.address().replace('\n', ', '),
        'Email_Pengacara': f"pengacara{i}_{fake.slug()}@{fake.domain_name()}",
        'Tempat_Lahir_Pca': fake.city(),
        'Tgl_Lhr_Pca': safe_strftime(tgl_lahir),
        'Gender_Pengacara': random.choice(['Laki-Laki', 'Wanita'])
    })

df_pengacara = pd.DataFrame(pengacara_data)
df_pengacara.to_csv('Pengacara_Dummy_1000.csv', index=False)
pengacara_ids = df_pengacara['Pengacara_ID'].tolist()

# ----------------------------------------------------
# --- 4. KLIEN (1000 Klien) ---
# ... (Kode ini tidak berubah) ...
# ----------------------------------------------------
klien_data = []
for i in range(1, NUM_RECORDS + 1):
    tgl_lahir = generate_random_date(datetime(1965, 1, 1), datetime(2005, 12, 31))
    tgl_daftar = generate_random_date(START_DATE, END_DATE)
    klien_data.append({
        'NIK': 100000 + i,
        'Nama_Klien': fake.name(),
        'Tgl_Daftar': safe_strftime(tgl_daftar),
        'No_Tlp_K': fake.phone_number()[:15],
        'Email_K': f"klien{i}_{fake.slug()}@{fake.domain_name()}",
        'Alamat_K': fake.address().replace('\n', ', '),
        'Gender_K': random.choice(['Laki-Laki', 'Wanita']),
        'Tmpt_tgl_lhr_K': fake.city(),
        'Tgl_lhr_K': safe_strftime(tgl_lahir),
        'Jenis_LH': random.choice(lh_ids) 
    })

df_klien = pd.DataFrame(klien_data)
df_klien.to_csv('Klien_Dummy_1000.csv', index=False)
klien_niks = df_klien['NIK'].tolist()

# ----------------------------------------------------
# --- 5. KASUS (1000 Kasus) ---
# ----------------------------------------------------
kasus_data = []
status_kasus_list = ['Proses', 'Selesai', 'Pending']
perkara_list = ['Perdata: Sengketa Tanah', 'Pidana: Penggelapan', 'Keluarga: Cerai Gugat', 'Bisnis: Wanprestasi', 'Tata Usaha Negara: Sengketa Izin', 'Hukum Properti: Jual Beli']

for i in range(1, NUM_RECORDS + 1):
    nik = random.choice(klien_niks)
    pengacara_id = random.choice(pengacara_ids)
    staf_id = random.choice(staf_ids)
    tgl_daftar = generate_random_date(START_DATE, END_DATE)
    tgl_mulai = generate_random_date(tgl_daftar, END_DATE)

    status = random.choices(status_kasus_list, weights=[0.4, 0.4, 0.2], k=1)[0]
    tgl_selesai = None
    hasil = ''
    
    if status == 'Selesai':
        # Tentukan tanggal awal selesai yang valid
        min_tgl_selesai = tgl_mulai + timedelta(days=7)
        
        # Cek apakah tanggal minimal selesai melebihi batas akhir
        if min_tgl_selesai < END_DATE:
            # Panggil fungsi generate_random_date yang sudah diperbaiki
            tgl_selesai = generate_random_date(min_tgl_selesai, END_DATE)
            hasil = random.choices(['Menang', 'Kalah', 'Damai'], weights=[0.5, 0.3, 0.2], k=1)[0]
        else:
            # Jika kasus berakhir sangat dekat dengan END_DATE, anggap saja pending/proses
            status = 'Proses'
            hasil = ''
            tgl_selesai = None


    perkara = random.choice(perkara_list)
    kasus_data.append({
        'Kasus_ID': 50000 + i,
        'Perkara_Kasus': perkara,
        'Deskripsi_Kasus': f"Kasus {perkara} No. {50000 + i} untuk NIK {nik}",
        'NIK': nik,
        'Pengacara_ID': pengacara_id,
        'Staf_ID': staf_id,
        'Tgl_Daftar': safe_strftime(tgl_daftar),
        'Tgl_Mulai': safe_strftime(tgl_mulai),
        'Tgl_Selesai': safe_strftime(tgl_selesai),
        'Hasil': hasil,
        'Status_Kasus': status
    })

df_kasus = pd.DataFrame(kasus_data)
df_kasus.to_csv('Kasus_Dummy_1000.csv', index=False)
kasus_ids = df_kasus['Kasus_ID'].tolist()

# Merge Kasus dengan Klien dan Layanan Hukum untuk mendapatkan data FK yang terhubung
df_kasus_detail = df_kasus.merge(df_klien[['NIK', 'Jenis_LH']], on='NIK', how='left')


# ----------------------------------------------------
# --- 6. PENAGIHAN (1000 Penagihan) ---
# ----------------------------------------------------
penagihan_data = []
status_penagihan_list = ['Lunas', 'Belum Lunas']
for i in range(NUM_RECORDS): # Iterasi dari 0 sampai 999
    # Ambil data kasus yang sudah terdaftar
    kasus_row = df_kasus_detail.iloc[i]
    
    # Ambil Tgl_Daftar (sudah berupa string 'YYYY-MM-DD')
    tgl_daftar_kasus = datetime.strptime(kasus_row['Tgl_Daftar'], '%Y-%m-%d')
    
    # Tgl_Penagihan harus setelah Tgl_Daftar Kasus
    tgl_penagihan = generate_random_date(tgl_daftar_kasus, END_DATE)
    
    status = random.choices(status_penagihan_list, weights=[0.8, 0.2], k=1)[0]
    tgl_bayar = None
    if status == 'Lunas':
        # Tgl_Bayar harus setelah Tgl_Penagihan
        tgl_bayar = generate_random_date(tgl_penagihan, tgl_penagihan + timedelta(days=30))

    # Ambil Harga Layanan Hukum dari Layanan_Hukum
    lh_harga = df_layanan_hukum.loc[df_layanan_hukum['LH_ID'] == kasus_row['Jenis_LH'], 'Harga_LH'].iloc[0]

    biaya_admin = random.choice([20000, 30000, 50000])
    biaya_pgd = random.randint(100000, 5000000)
    biaya_salinan = random.choice([10000, 20000, 50000])
    
    penagihan_data.append({
        'Penagihan_ID': 70000 + (i + 1),
        'NIK': kasus_row['NIK'],
        'LH_ID': kasus_row['Jenis_LH'],
        'Kasus_ID': kasus_row['Kasus_ID'],
        'Staf_ID': kasus_row['Staf_ID'],
        'Tgl_Penagihan': safe_strftime(tgl_penagihan),
        'Status_Penagihan': status,
        'Tgl_Bayar': safe_strftime(tgl_bayar),
        'Biaya_Admin': biaya_admin,
        'Biaya_PendaftaranPgd': biaya_pgd,
        'Biaya_SalinanPts': biaya_salinan,
        'Biaya_Layanan_Hukum': lh_harga
    })

df_penagihan = pd.DataFrame(penagihan_data)
df_penagihan.to_csv('Penagihan_Dummy_1000.csv', index=False)

# ----------------------------------------------------
# --- 7. DOKUMEN_HUKUM (1000 Dokumen) ---
# ... (Kode ini tidak berubah) ...
# ----------------------------------------------------
dokumen_data = []
jenis_dokumen_list = ['Surat Kuasa', 'Gugatan', 'Jawaban Gugatan', 'Bukti-Bukti', 'Putusan Pengadilan', 'Resume Kasus']

for i in range(1, NUM_RECORDS + 1):
    # Ambil data dari kasus yang terdaftar
    kasus_row = df_kasus.iloc[i-1]
    
    nama_dokumen = f"{random.choice(jenis_dokumen_list)} Kasus ID {kasus_row['Kasus_ID']}"
    tgl_upload = generate_random_date(datetime.strptime(kasus_row['Tgl_Daftar'], '%Y-%m-%d'), END_DATE)
    
    dokumen_data.append({
        'Dokumen_ID': 90000 + i,
        'Nama_Dokumen': nama_dokumen,
        'Pengacara_ID': kasus_row['Pengacara_ID'],
        'Kasus_ID': kasus_row['Kasus_ID'],
        'Tanggal_Upload': safe_strftime(tgl_upload),
        'Staf_ID': kasus_row['Staf_ID'],
        'URL_Doc': f"https://doc_storage.com/{kasus_row['Kasus_ID']}_{fake.md5()[:5]}.pdf"
    })

df_dokumen = pd.DataFrame(dokumen_data)
df_dokumen.to_csv('Dokumen_Hukum_Dummy_1000.csv', index=False)

print("7 file CSV dummy dengan 1000 baris data per file telah berhasil dibuat.")