<?php

namespace App\Controllers;

use App\Models\M_MobilMasuk;
use App\Models\M_MobilKeluar;
use App\Models\M_MobilKeluarQuery;
use App\Models\M_AdminQuery;

class Pegawai extends BaseController
{
    public function __construct()
    {
        $this->session = session();
        $this->mobilMasuk = new M_MobilMasuk();
        $this->mobilKeluar = new M_MobilKeluar();
        $this->mobilKeluarQuery = new M_MobilKeluarQuery();
        $this->AdminQuery = new M_AdminQuery();

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
        $data['stokMobilMasuk'] = $this->AdminQuery->sum_mobil_masuk();
        $data['stokMobilKeluarByNip'] = $this->AdminQuery->sum_mobil_keluar_by_nip();
        echo view("pegawai/pegawai_header", $data);
        echo view('pegawai/index');
        echo view("pegawai/pegawai_footer", $data);
    }

    ####################################
            // DATA MOBIL MASUK
    ####################################

    public function tabel_mobilmasuk()
    {
        $data['list_data'] = $this->mobilMasuk->findAll();
        $data['list_data_dipinjam'] = $this->mobilKeluarQuery->get_transaksi_mobil_by_dipinjam();
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
            'plat_mobil' => $this->request->getVar('plat_mobil'),
            'merk_mobil' => $this->request->getVar('merk_mobil'),
            'tahun_mobil' => $this->request->getVar('tahun_mobil'),
            'tanggal_dikembalikan' => "-",
            'tipe_mobil' => $this->request->getVar('tipe_mobil'),
            'status_pengajuan' => "Belum Disetujui",
            'status_pinjaman' => "Belum Selesai",
            'status_diterima' => "Belum Diterima",
            'jumlah' => "1",
            'nama_peminjam' => $this->request->getVar('nama'),
            'nip_peminjam' => $this->request->getVar('nip'),
            'jabatan_peminjam' => $this->request->getVar('jabatan'),
            'alamat_peminjam' => $this->request->getVar('alamat'),
            'telp_peminjam' => $this->request->getVar('telepon'),
            'tujuan_meminjam' => $this->request->getVar('tujuan')
            ]);
        session()->setFlashdata('message', 'Peminjaman Mobil Berhasil!');
        return redirect()->to('pegawai/tabel_mobilmasuk');
    }


    ####################################
        // END DATA MOBIL MASUK
    ####################################

    ####################################
        // DATA RIWAYAT
    ####################################

    public function riwayat_mobil()
    {
        $data['list_mobil'] = $this->mobilKeluarQuery->get_transaksi_mobil_by_nip();
        $data['title'] = "Riwayat Transaksi Mobil";
        $data['activeMenu'] = "riwayatMobil";

        echo view("pegawai/pegawai_header", $data);
        echo view('pegawai/tabel/tabel_riwayat_mobil', $data);
        echo view("pegawai/pegawai_footer");

    }

    public function terima_mobil($id)
    {        
        $where = array( 'id' => $id);        
        
        $dataMobilKeluar = $this->mobilKeluar->find($id);
        if (empty($dataMobilKeluar)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Mobil Tidak ditemukan!');
        }

        $data['list_data'] = $dataMobilKeluar;
        $data['title'] = "Terima Mobil";
        $data['activeMenu'] = "riwayatMobil";

        echo view("pegawai/pegawai_header", $data);
        echo view('pegawai/riwayat/terima_mobil',$data);
        echo view("pegawai/pegawai_footer");
    }

    public function proses_terima_mobil($id)
    {
        if (!$this->validate([
            'status_diterima' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi'
                ]
            ],
            // 'jumlah' => [
            //     'errors' => [
            //         'required' => '{field} harus diisi'
            //     ]
            // ],
            ])) {
                session()->setFlashdata('error', $this->validator->listErrors());
                return redirect()->back();
            }

            // $jumlah = $this->request->getVar('jumlah');
    
            $this->mobilKeluar->update($id, [
                'status_diterima' => $this->request->getVar('status_diterima')
            ]);
            session()->setFlashdata('message', 'Mobil Telah Diterima');
            return redirect()->to('pegawai/riwayat_mobil');
    }

    
    ####################################
        // END DATA RIWAYAT
    ####################################
}