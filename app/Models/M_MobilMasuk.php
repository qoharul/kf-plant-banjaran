<?php

namespace App\Models;

use CodeIgniter\Model;

class M_MobilMasuk extends Model
{
  protected $table = 'tb_mobil_masuk';
  protected $primaryKey = 'id_mobil';
  protected $allowedFields = [
    'tahun_mobil',
    'plat_mobil',
    'merk_mobil',
    'tipe_mobil',
    'jumlah',
    'diperuntukkan'
  ];
}

?>