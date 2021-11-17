<?php

namespace App\Models;

use CodeIgniter\Model;

class M_BarangMasuk extends Model
{
  protected $table = 'tb_barang_masuk';
  protected $primaryKey = 'id_transaksi'; 
  protected $allowedFields = [
    'tanggal',
    'kode_barang',
    'nama_barang',
    'satuan',
    'jumlah'
  ];
}

?>