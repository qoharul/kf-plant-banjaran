<?php

namespace App\Models;

use CodeIgniter\Model;

class M_MobilKeluar extends Model
{
  protected $table = 'tb_mobil_keluar';
  protected $primaryKey = 'id'; 
  protected $allowedFields = [
    'id_mobil',
    'tanggal_berangkat',
    'tanggal_kembali',
    'bagian',
    'plat_mobil',
    'merk_mobil',
    'tahun_mobil',
    'sopir',
    'tanggal_dikembalikan',
    'tipe_mobil',
    'status_pengajuan',
    'status_diterima',
    'status_pinjaman',
    'jumlah',
    'nama_peminjam',
    'nip_peminjam',
    'pangkat_peminjam',
    'jabatan_peminjam',
    'alamat_peminjam',
    'telp_peminjam',
    'tujuan_meminjam'
  ];
}

?>