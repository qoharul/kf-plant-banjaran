<?php

namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\Database\BaseBuilder;
use CodeIgniter\Database\Query;

class M_AdminQuery extends Model
{
  protected $db;

  public function __construct()
  {
    $this->db = db_connect();
  }

  public function get_where_mobil_belum_disetujui()
  {
    $builder = $this->db->table('tb_mobil_keluar');
    $query = $builder->getWhere(['status_pengajuan'=>'Disetujui']);
    return $query;
  }

  public function get_where_riwayat_akun()
  {
    $builder = $this->db->table('tb_mobil_keluar');
    $query = $builder->getWhere(['status_pengajuan'=>'Disetujui']);
    return $query;
  }

  public function notifikasi_mobil()
  {        
    $builder = $this->db->table('tb_mobil_keluar');
    $builder->selectCount('id');
    $query = $builder->getWhere(['status_pengajuan'=>'Belum Disetujui']);
    return $query;
  }

  
  public function sum_mobil_masuk()
  {
    $builder = $this->db->table('tb_mobil_masuk');
    $builder->selectSum('jumlah');
    $query = $builder->get();
    return $query;
  }

  public function sum_mobil_keluar()
  {
    $builder = $this->db->table('tb_mobil_keluar');
    $builder->selectCount('id');
    $query = $builder->get();
    return $query;
  }

  public function sum_mobil_keluar_by_nip()
  {
    $session = $this->session = session();
    $builder = $this->db->table('tb_mobil_keluar');
    $builder->selectCount('nip_peminjam');
    $query = $builder->getWhere(['nip_peminjam'=> $session->get('nip')]);
    return $query;

  //   $session = $this->session = session();
  //   $builder = $this->db->table('tb_mobil_keluar');
  //   $query = $builder->getWhere(['nip_peminjam'=> $session->get('nip')]);
  //   return $query;
  // }
  }

}

?>