<?php

namespace App\Controllers;

use App\Models\M_BarangMasuk;
use App\Models\M_BarangKeluar;
use App\Models\M_MobilMasuk;
use App\Models\M_MobilKeluar;
use App\Models\M_Satuan;

class Pegawai extends BaseController
{
    public function __construct()
    {
        $this->session = session();
        $this->barangMasuk = new M_BarangMasuk();
        $this->barangKeluar = new M_BarangKeluar();
        $this->mobilMasuk = new M_MobilMasuk();
        $this->mobilKeluar = new M_MobilKeluar();

    }
    
    public function index()
    {
        //cek apakah ada session bernama isLogin
        if(!$this->session->has('isLogin')){
            return redirect()->to('/auth/login');
        }
        
        //cek role dari session
        if($this->session->get('role') != 2){
            return redirect()->to('/admin');
        }
        
        $data['title'] = "Menu Utama";
        $data['activeMenu'] = "dashboard";

        echo view("pegawai/pegawai_header", $data);
        echo view('pegawai/index');
        echo view("pegawai/pegawai_footer", $data);
    }


    ####################################
            // DATA BARANG MASUK
    ####################################
      
    public function tabel_barangmasuk()
    {
        $data['list_data'] = $this->barangMasuk->findAll();
        $data['title'] = "Tabel Barang Masuk";
        $data['activeMenu'] = "barang";

        echo view("pegawai/pegawai_header", $data);
        echo view('pegawai/tabel/tabel_barangmasuk', $data);
        echo view("pegawai/pegawai_footer");
    }  

    public function tabel_barangkeluar()
    {
        $data['list_data'] = $this->barangKeluar->findAll();
        $data['title'] = "Tabel Barang Keluar";
        $data['activeMenu'] = "laporanBarang";

        echo view("pegawai/pegawai_header", $data);
        echo view('pegawai/tabel/tabel_barangkeluar', $data);
        echo view("pegawai/pegawai_footer");
    }

    ####################################
        // END DATA BARANG MASUK
    ####################################


    ####################################
            // DATA MOBIL MASUK
    ####################################

    public function tabel_mobilmasuk()
    {
        $data['list_data'] = $this->mobilMasuk->findAll();
        $data['title'] = "Tabel Mobil Masuk";
        $data['activeMenu'] = "mobil";

        echo view("pegawai/pegawai_header", $data);
        echo view('pegawai/tabel/tabel_mobilmasuk', $data);
        echo view("pegawai/pegawai_footer");
    }

    public function tabel_mobilkeluar()
    {
        $data['list_data'] = $this->mobilKeluar->findAll();
        $data['title'] = "Tabel Mobil Dipinjam";
        $data['activeMenu'] = "laporanMobil";

        echo view("pegawai/pegawai_header", $data);
        echo view('pegawai/tabel/tabel_mobilkeluar', $data);
        echo view("pegawai/pegawai_footer");
    }

    ####################################
        // END DATA MOBIL MASUK
    ####################################
    
}