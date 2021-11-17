<?php

namespace App\Models;

use CodeIgniter\Model;

class M_Satuan extends Model
{
  protected $table = 'tb_satuan';
  protected $primaryKey = 'id_satuan';
  protected $allowedFields = [
    'kode_satuan',
    'nama_satuan'
  ];
}

?>