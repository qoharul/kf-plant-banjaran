<?php

namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\Database\BaseBuilder;

class M_MobilKeluarQuery extends Model
{
  protected $db;

  public function __construct()
  {
    $this->db = db_connect();
  }

  // Get query
  // SELECT * FROM tb_mobil_keluar
  public function get()
  {
    $builder = $this->db->table('tb_mobil_keluar');
    $query = $builder->get();
    return $query;
  }

  // Cek query dalam bentuk teks
  // Output berbentuk teks
  public function get_compiled_select()
  {
    $builder = $this->db->table('tb_mobil_keluar');
    $builder->where('status_pengajuan', 'Disetujui');
    $query = $builder->getCompiledSelect();
    return query;
  }

  // Get query where
  // SELECT * from 'tb_mobil_keluar' WHERE 'status_peminjaman' = 'Belum Disetujui'
  public function get_where()
  {
    $builder = $this->db->table('tb_mobil_keluar');
    $query = $builder->getWhere(['status_pengajuan'=>'Belum Disetujui']);
    return $query;
  }

  public function get_transaksi_mobil_by_nip()
  {
    $session = $this->session = session();
    $builder = $this->db->table('tb_mobil_keluar');
    $query = $builder->getWhere(['nip_peminjam'=> $session->get('nip')]);
    return $query;
  }

  public function get_transaksi_mobil_by_dipinjam()
  {
    $session = $this->session = session();
    $builder = $this->db->table('tb_mobil_keluar');
    $query = $builder->getWhere(['status_pinjaman'=> 'Belum Selesai']);
    return $query;
  }

  // Get query where
  // SELECT * from 'tb_mobil_keluar' WHERE 'status_peminjaman' = 'Belum Disetujui'
  public function get_where_reverse()
  {
    $builder = $this->db->table('tb_mobil_keluar');
    $query = $builder->getWhere(['status_pengajuan'=>'Disetujui']);
    return $query;
  }

  // Get query where
  // SELECT * from 'tb_mobil_keluar' WHERE 'status_peminjaman' = 'Belum Disetujui'
  public function notifikasi()
  {        
    $builder = $this->db->table('tb_mobil_keluar');
    $builder->selectCount('id');
    $query = $builder->getWhere(['status_pengajuan'=>'Belum Disetujui']);
    return $query;
    
    // $builder = $this->db->table('tb_mobil_keluar');
    // $builder->selectCount('id');
    // $query = $builder->getWhere(['status_peminjaman'=>'Belum Disetujui']);
    // return $query;
    
      // $builder = $this->db->table('tb_mobil_keluar');
      // $builder->selectCount('tb_mobil_keluar.status_peminjaman, tb_mobil_keluar.status_peminjaman');
      // $builder->join('tb_mobil_keluar', 'tb_mobil_keluar.status_peminjaman = tb_mobil_keluar.status_peminjaman');
      // $query = $builder->getWhere(['tb_mobil_keluar.status_peminjaman'=>'Belum Disetujui']);
      // return $query;

  }    
  
  public function join()
  {
      /**
       * SELECT tb_mobil_keluar.status_peminjaman, tb_mobil_keluar.status_peminjaman
       * FROM video_games_sales
       * LEFT JOIN tb_mobil_keluar ON tb_mobil_keluar.Genre = tb_mobil_keluar.id
       */
      $builder = $this->db->table('tb_mobil_keluar');
      $builder->select('tb_mobil_keluar.status_peminjaman, tb_mobil_keluar.status_peminjaman');
      $builder->join('tb_mobil_keluar', 'tb_mobil_keluar.Genre = tb_mobil_keluar.id');
      $query = $builder->get();
      return $query;
  }


}

?>