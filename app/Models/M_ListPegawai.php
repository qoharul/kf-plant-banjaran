<?php

namespace App\Models;

use CodeIgniter\Model;

class M_ListPegawai extends Model
{
  protected $table = 'tb_pegawai';
  protected $primaryKey = 'id_pegawai';
  protected $allowedFields = [
    'nip',
    'nama',
    'bagian',
    'pangkat',
    'jabatan',
    'alamat',
    'telp'
  ];
}

?>