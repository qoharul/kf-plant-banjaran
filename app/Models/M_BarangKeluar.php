<?php

namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\Database\BaseBuilder;

class M_BarangKeluar extends Model
{
  protected $db;
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
    'jumlah',
    'status'
  ];
}

?>