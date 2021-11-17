<?php

namespace App\Models;

use CodeIgniter\Model;

class M_BarangKeluar extends Model
{
  protected $table = 'tb_barang_keluar';
  protected $primaryKey = 'id'; 
  protected $allowedFields = [
    'id_transaksi',
    'tanggal_masuk',
    'tanggal_keluar',
    'bagian',
    'kode_barang',
    'nama_barang',
    'satuan',
    'jumlah'
  ];
}

?>