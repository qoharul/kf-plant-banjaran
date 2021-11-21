<?php

namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\Database\BaseBuilder;

class M_BarangKeluarQuery extends Model
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

  public function __construct()
  {
    $this->db = db_connect();
  }

  // Get query
  // SELECT * FROM tb_barang_keluar
  public function get()
  {
    $builder = $this->db->table('tb_barang_keluar');
    $query = $builder->get();
    return $query;
  }

  // Cek query dalam bentuk teks
  // Output berbentuk teks
  public function get_compiled_select()
  {
    $builder = $this->db->table('tb_barang_keluar');
    $builder->where('status', 'disetujui');
    $query = $builder->getCompiledSelect();
    return query;
  }

  // Get query where
  // SELECT * from 'tb_barang_keluar' WHERE 'status' = 'Belum Disetujui'
  public function get_where()
  {
    $builder = $this->db->table('tb_barang_keluar');
    $query = $builder->getWhere(['status'=>'Belum Disetujui']);
    return $query;
  }

  // Get query where
  // SELECT * from 'tb_barang_keluar' WHERE 'status' = 'Belum Disetujui'
  public function notifikasi()
  {        
    $builder = $this->db->table('tb_barang_keluar');
    $builder->selectCount('id');
    $query = $builder->getWhere(['status'=>'Belum Disetujui']);
   
    return $query;

    // $builder = $this->db->table('tb_barang_keluar');
    // $query = $builder->getWhere(['status'=>'Belum Disetujui']);
    // return $query;
  }
}

?>