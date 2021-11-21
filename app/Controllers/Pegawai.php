<?php

namespace App\Controllers;

use App\Models\M_BarangMasuk;
use App\Models\M_BarangKeluar;
use App\Models\M_MobilMasuk;
use App\Models\M_MobilKeluar;

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

    public function minta_barang($id_transaksi)
    {
        $request = \Config\Services::request();
        $uri = $request->uri->getSegment(3);
        $where = array( 'id_transaksi' => $uri);

        
        $dataBarangMasuk = $this->barangMasuk->find($id_transaksi);
        if (empty($dataBarangMasuk)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Barang Tidak ditemukan!');
        }

        $data['list_data'] = $dataBarangMasuk;
        $data['title'] = "Minta Barang";
        $data['activeMenu'] = "barang";

        echo view("pegawai/pegawai_header", $data);
        echo view('pegawai/perpindahan_barang/form_update',$data);
        echo view("pegawai/pegawai_footer");
    }

    public function proses_minta_barang($id_transaksi)
    {
        if (!$this->validate([
        'id_transaksi' => [
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'tanggal_masuk' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'tanggal_keluar' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'bagian' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'kode_barang' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'nama_barang' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'satuan' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'jumlah' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],

        ])) {
            session()->setFlashdata('error', $this->validator->listErrors());
            return redirect()->back();
        }

        $this->barangKeluar->insert([
            'id_transaksi' => $this->request->getVar('id_transaksi'),
            'tanggal_masuk' => $this->request->getVar('tanggal_masuk'),
            'tanggal_keluar' => $this->request->getVar('tanggal_keluar'),
            'kode_barang' => $this->request->getVar('kode_barang'),
            'bagian' => $this->request->getVar('bagian'),
            'nama_barang' => $this->request->getVar('nama_barang'),
            'satuan' => $this->request->getVar('satuan'),
            'jumlah' => $this->request->getVar('jumlah'),
            'status' => 'Belum Disetujui'
            ]);
        session()->setFlashdata('message', 'Mengeluarkan Data Barang Berhasil!');
        return redirect()->to('pegawai/tabel_barangmasuk');
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

    public function pinjam_mobil($id_mobil)
    {
        $request = \Config\Services::request();
        $uri = $request->uri->getSegment(3);
        $where = array( 'id_mobil' => $uri);

        
        $dataMobilMasuk = $this->mobilMasuk->find($id_mobil);
        if (empty($dataMobilMasuk)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Mobil Tidak ditemukan!');
        }

        $data['list_data'] = $dataMobilMasuk;
        $data['title'] = "Pinjam Mobil";
        $data['activeMenu'] = "mobil";

        echo view("pegawai/pegawai_header", $data);
        echo view('pegawai/peminjaman_mobil/form_update',$data);
        echo view("pegawai/pegawai_footer");
    }
  
    public function proses_peminjaman_mobil($id_mobil)
    {
        if (!$this->validate([
        'id_mobil' => [
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'nama' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'nip' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'pangkat' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'jabatan' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'alamat' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'telepon' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'bagian' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'merk_mobil' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'tipe_mobil' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'plat_mobil' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'tahun_mobil' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'tujuan' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],

        ])) {
            session()->setFlashdata('error', $this->validator->listErrors());
            return redirect()->back();
        }

        $this->mobilKeluar->insert([
            'id_mobil' => $this->request->getVar('id_mobil'),
            'tanggal_berangkat' => $this->request->getVar('tanggal_berangkat'),
            'tanggal_kembali' => $this->request->getVar('tanggal_kembali'),
            'bagian' => $this->request->getVar('bagian'),
            'plat_mobil' => $this->request->getVar('plat_mobil'),
            'merk_mobil' => $this->request->getVar('merk_mobil'),
            'tahun_mobil' => $this->request->getVar('tahun_mobil'),
            'tanggal_dikembalikan' => "-",
            'tipe_mobil' => $this->request->getVar('tipe_mobil'),
            'status_pinjaman' => "Belum Selesai",
            'jumlah' => "1",
            'nama_peminjam' => $this->request->getVar('nama'),
            'nip_peminjam' => $this->request->getVar('nip'),
            'pangkat_peminjam' => $this->request->getVar('pangkat'),
            'jabatan_peminjam' => $this->request->getVar('jabatan'),
            'alamat_peminjam' => $this->request->getVar('alamat'),
            'telp_peminjam' => $this->request->getVar('telepon'),
            'tujuan_meminjam' => $this->request->getVar('tujuan')
            ]);
        session()->setFlashdata('message', 'Peminjaman Mobil Berhasil!');
        return redirect()->to('pegawai/tabel_mobilkeluar');
    }


    ####################################
        // END DATA MOBIL MASUK
    ####################################
    
}