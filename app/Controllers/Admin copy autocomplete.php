<?php

namespace App\Controllers;

use App\Models\M_BarangMasuk;
use App\Models\M_BarangKeluar;
use App\Models\M_MobilMasuk;
use App\Models\M_MobilKeluar;
use App\Models\M_Satuan;
use App\Models\UserModel;
use App\Models\M_ListPegawai;

class Admin extends BaseController
{

    public function __construct()
    {
        $this->session = session();       
        $this->barangMasuk = new M_BarangMasuk();
        $this->barangKeluar = new M_BarangKeluar();
        $this->mobilMasuk = new M_MobilMasuk();
        $this->mobilKeluar = new M_MobilKeluar();
        $this->satuan = new M_Satuan();
        $this->pengguna = new UserModel();
        $this->pegawai = new M_ListPegawai();
    }

    public function index()
    {   
        //cek apakah ada session bernama isLogin
        if(!$this->session->has('isLogin')){
            return redirect()->to('/auth/login');
        }
        
        //cek role dari session
        if($this->session->get('role') != 1){
            return redirect()->to('/pegawai');
        }
        
        
        $data['mobilDisewa'] = $this->mobilKeluar->selectSum('tb_mobil_keluar','jumlah');
        $data['title'] = "Dashboard";
        $data['activeMenu'] = "dashboard";

        echo view("admin/admin_header", $data);
        echo view('admin/index', $data);
        echo view("admin/admin_footer");
    }

    // public function getPegawai(){

    //     $request = service('request');
    //     $postData = $request->getPost();
  
    //     $response = array();
  
    //     // Read new token and assign in $response['token']
    //     $response['token'] = csrf_hash();
    //     $data = array();
  
    //     if(isset($postData['search'])){
  
    //        $search = $postData['search'];
  
    //         // Fetch record
    //         // $users = new Users();
    //        $pegawailist = $pegawai->select('nama,nip')
    //               ->like('nip',$search)
    //               ->orderBy('nip')
    //               ->findAll();
    //        foreach($pegawailist as $pl){
    //            $data[] = array(
    //               "value" => $pl['nama'],
    //               "label" => $pl['nip'],
    //            );
    //        }
    //     }
  
    //     $response['data'] = $data;
  
    //     return $this->response->setJSON($response);
  
    // }


    ####################################
            // DATA BARANG MASUK
    ####################################
  
    public function form_barangmasuk()
    {
        $data['list_satuan'] = $this->satuan->findAll();
        $data['title'] = "Tambah Barang";
        $data['activeMenu'] = "barang";

        echo view("admin/admin_header", $data);
        echo view('admin/form_barangmasuk/form_insert', $data);
        echo view("admin/admin_footer");
    }
    
    public function proses_databarang_masuk_insert()
    {
        if (!$this->validate([
        'date' => [
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
        return redirect()->back()->withInput();
        }

        $this->barangMasuk->insert([
        'tanggal' => $this->request->getVar('date'),
        'kode_barang' => $this->request->getVar('kode_barang'),
        'nama_barang' => $this->request->getVar('nama_barang'),
        'satuan' => $this->request->getVar('satuan'),
        'jumlah' => $this->request->getVar('jumlah')
        ]);
        session()->setFlashdata('message', 'Tambah Data Barang Berhasil');
        return redirect()->to('/admin/tabel_barangmasuk');
    }

    function ubah_barang($id_transaksi)
    {
        $dataBarangMasuk = $this->barangMasuk->find($id_transaksi);
        if (empty($dataBarangMasuk)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Barang Tidak ditemukan!');
        }
        $data['list_data'] = $dataBarangMasuk;
        $data['list_satuan'] = $this->satuan->findAll();
        $data['title'] = "Ubah Barang";
        $data['activeMenu'] = "barang";

        echo view("admin/admin_header", $data);
        echo view('admin/form_barangmasuk/form_update', $data);
        echo view("admin/admin_footer");
    }

    public function proses_databarang_masuk_update($id_transaksi)
    {
        if (!$this->validate([
        'date' => [
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

        $this->barangMasuk->update($id_transaksi, [
            'tanggal' => $this->request->getVar('date'),
            'kode_barang' => $this->request->getVar('kode_barang'),
            'nama_barang' => $this->request->getVar('nama_barang'),
            'satuan' => $this->request->getVar('satuan'),
            'jumlah' => $this->request->getVar('jumlah')
            ]);
        session()->setFlashdata('message', 'Ubah Data Barang Berhasil');
        return redirect()->to('admin/tabel_barangmasuk');
    }

    function hapus_barang($id_transaksi)
    {
        $dataBarangMasuk = $this->barangMasuk->find($id_transaksi);
        if (empty($dataBarangMasuk)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Barang Tidak ditemukan!');
        }
        $this->barangMasuk->delete($id_transaksi);
        session()->setFlashdata('message', 'Hapus Data Barang Berhasil');
        return redirect()->to('admin/tabel_barangmasuk');
    }
    
    public function tabel_barangmasuk()
    {
        $data['list_data'] = $this->barangMasuk->findAll();
        $data['title'] = "Barang";
        $data['activeMenu'] = "barang";

        echo view("admin/admin_header", $data);
        echo view('admin/tabel/tabel_barangmasuk', $data);
        echo view("admin/admin_footer");
    }  

    public function tabel_barangkeluar()
    {
        $data['list_data'] = $this->barangKeluar->findAll();
        $data['title'] = "Tabel Barang Keluar";
        $data['activeMenu'] = "laporanBarang";

        echo view("admin/admin_header", $data);
        echo view('admin/tabel/tabel_barangkeluar', $data);
        echo view("admin/admin_footer");
    }

    public function barang_keluar($id_transaksi)
    {
        $request = \Config\Services::request();
        $uri = $request->uri->getSegment(3);
        $where = array( 'id_transaksi' => $uri);

        
        $dataBarangMasuk = $this->barangMasuk->find($id_transaksi);
        if (empty($dataBarangMasuk)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Barang Tidak ditemukan!');
        }

        $data['list_data'] = $dataBarangMasuk;
        $data['list_satuan'] = $this->satuan->findAll();
        $data['title'] = "Keluarkan Barang";
        $data['activeMenu'] = "barang";

        echo view("admin/admin_header", $data);
        echo view('admin/perpindahan_barang/form_update',$data);
        echo view("admin/admin_footer");
    }
  
    public function proses_perpindahan_barang($id_transaksi)
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
            'jumlah' => $this->request->getVar('jumlah')
            ]);
        session()->setFlashdata('message', 'Mengeluarkan Data Barang Berhasil!');
        return redirect()->to('admin/tabel_barangkeluar');
    }
  

    ####################################
        // END DATA BARANG MASUK
    ####################################


    ####################################
            // DATA MOBIL MASUK
    ####################################
  
    public function form_mobilmasuk()
    {
        $data['title'] = "Tambah Mobil";
        $data['activeMenu'] = "mobil";

        echo view("admin/admin_header", $data);
        echo view('admin/form_mobilmasuk/form_insert', $data);
        echo view("admin/admin_footer");
    }
    
    public function proses_datamobil_masuk_insert()
    {
        if (!$this->validate([
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
        'jumlah' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'diperuntukkan' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],

        ])) {
        session()->setFlashdata('error', $this->validator->listErrors());
        return redirect()->back()->withInput();
        }

        $this->mobilMasuk->insert([
            'merk_mobil' => $this->request->getVar('merk_mobil'),
            'tipe_mobil' => $this->request->getVar('tipe_mobil'),
            'plat_mobil' => $this->request->getVar('plat_mobil'),
            'tahun_mobil' => $this->request->getVar('tahun_mobil'),
            'jumlah' => $this->request->getVar('jumlah'),
            'diperuntukkan' => $this->request->getVar('diperuntukkan')
        ]);
        session()->setFlashdata('message', 'Tambah Data Mobil Berhasil');
        return redirect()->to('/admin/tabel_mobilmasuk');
    }

    function ubah_mobil($id_mobil)
    {
        $dataMobilMasuk = $this->mobilMasuk->find($id_mobil);
        if (empty($dataMobilMasuk)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Mobil Tidak ditemukan!');
        }
        $data['list_data'] = $dataMobilMasuk;
        $data['title'] = "Ubah Mobil";
        $data['activeMenu'] = "mobil";

        echo view("admin/admin_header", $data);
        echo view('admin/form_mobilmasuk/form_update', $data);
        echo view("admin/admin_footer");
    }

    public function proses_datamobil_masuk_update($id_mobil)
    {
        if (!$this->validate([
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
        'jumlah' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'diperuntukkan' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],

        ])) {
            session()->setFlashdata('error', $this->validator->listErrors());
            return redirect()->back();
        }

        $this->mobilMasuk->update($id_mobil, [
            'merk_mobil' => $this->request->getVar('merk_mobil'),
            'tipe_mobil' => $this->request->getVar('tipe_mobil'),
            'plat_mobil' => $this->request->getVar('plat_mobil'),
            'tahun_mobil' => $this->request->getVar('tahun_mobil'),
            'jumlah' => $this->request->getVar('jumlah'),
            'diperuntukkan' => $this->request->getVar('diperuntukkan')
        ]);
        session()->setFlashdata('message', 'Ubah Data Mobil Berhasil');
        return redirect()->to('admin/tabel_mobilmasuk');
    }

    function hapus_mobil($id_mobil)
    {
        $dataMobilMasuk = $this->mobilMasuk->find($id_mobil);
        if (empty($dataMobilMasuk)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Mobil Tidak ditemukan!');
        }
        $this->mobilMasuk->delete($id_mobil);
        session()->setFlashdata('message', 'Hapus Data Mobil Berhasil');
        return redirect()->to('admin/tabel_mobilmasuk');
    }

    public function tabel_mobilmasuk()
    {
        $data['list_data'] = $this->mobilMasuk->findAll();
        $data['title'] = "Tabel Mobil Masuk";
        $data['activeMenu'] = "mobil";

        echo view("admin/admin_header", $data);
        echo view('admin/tabel/tabel_mobilmasuk', $data);
        echo view("admin/admin_footer");
    }

    public function tabel_mobilkeluar()
    {
        $data['list_data'] = $this->mobilKeluar->findAll();
        $data['title'] = "Tabel Mobil Dipinjam";
        $data['activeMenu'] = "laporanMobil";

        echo view("admin/admin_header", $data);
        echo view('admin/tabel/tabel_mobilkeluar', $data);
        echo view("admin/admin_footer");
    }

    public function mobil_keluar($id_mobil)
    {

  
  

        $request = \Config\Services::request();
        $uri = $request->uri->getSegment(3);
        $where = array( 'id_mobil' => $uri);
        $postData = $request->getPost();
        $response = array();
        // $response['token'] = csrf_hash();
        $data = array();

        // Read new token and assign in $response['token']
        if(isset($postData['search'])){
            $search = $postData['search'];
            // Fetch record
            // $users = new Users();
            $userlist = $pegawai->select('nama,nip')
                    ->like('nip',$search)
                    ->orderBy('nip')
                    ->findAll(5);
            foreach($userlist as $user){
                $data[] = array(
                    "value" => $user['nama'],
                    "label" => $user['nip'],
                );
            }
        }
        
        $response['data'] = $data;

        // return $this->response->setJSON($response);

        $dataMobilMasuk = $this->mobilMasuk->find($id_mobil);
        if (empty($dataMobilMasuk)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Mobil Tidak ditemukan!');
        }

        $data['list_pegawai'] = $this->pegawai->findAll();
        $data['list_data'] = $dataMobilMasuk;
        $data['title'] = "Pinjamkan Mobil";
        $data['activeMenu'] = "mobil";

        echo view("admin/admin_header", $data);
        echo view('admin/peminjaman_mobil/form_update',$data);
        echo view("admin/admin_footer");
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
        return redirect()->to('admin/tabel_mobilkeluar');
    }

    public function pengembalian_mobil($id)
    {        
        $where = array( 'id' => $id);        
        
        $dataMobilKeluar = $this->mobilKeluar->find($id);
        if (empty($dataMobilKeluar)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Mobil Tidak ditemukan!');
        }

        $data['list_data'] = $dataMobilKeluar;
        $data['title'] = "Pengembalian Mobil";
        $data['activeMenu'] = "mobilKeluar";

        echo view("admin/admin_header", $data);
        echo view('admin/pengembalian_mobil/form_update',$data);
        echo view("admin/admin_footer");
    }
  
    public function proses_pengembalian_mobil($id)
    {
        if (!$this->validate([
            'tanggal_pengembalian' => [
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

            $jumlah = $this->request->getVar('jumlah');
    
            $this->mobilKeluar->update($id, [
                'tanggal_dikembalikan' => $this->request->getVar('tanggal_pengembalian'),
                'status_pinjaman' => "Selesai",
                'jumlah' => 0
            ]);
            session()->setFlashdata('message', 'Pengembalian Mobil Telah Berhasil');
            return redirect()->to('admin/tabel_mobilkeluar');
    }

    public function batal_sewa($id)
    {        
        $dataMobilKeluar = $this->mobilKeluar->find($id);
        if (empty($dataMobilKeluar)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Mobil Tidak ditemukan!');
        }
        $this->mobilKeluar->delete($id);
        session()->setFlashdata('message', 'Batal Sewa Mobil Berhasil');
        return redirect()->to('admin/tabel_mobilkeluar');


    }

    ####################################
        // END DATA MOBIL MASUK
    ####################################


    ####################################
            // DATA SATUAN
    ####################################

    public function form_satuan()
    {
        $data['title'] = "Tambah Satuan";
        $data['activeMenu'] = "tambahSatuan";

        echo view("admin/admin_header", $data);
        echo view('admin/form_satuan/form_insert', $data);
        echo view("admin/admin_footer");
    }
    
    public function proses_satuan_insert()
    {
        if (!$this->validate([
        'kode_satuan' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],
        'nama_satuan' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],

        ])) {
        session()->setFlashdata('error', $this->validator->listErrors());
        return redirect()->back()->withInput();
        }

        $this->satuan->insert([
            'kode_satuan' => $this->request->getVar('kode_satuan'),
            'nama_satuan' => $this->request->getVar('nama_satuan')
        ]);
        session()->setFlashdata('message', 'Tambah Data Satuan Berhasil');
        return redirect()->to('/admin/form_satuan');
    }

    function ubah_satuan($id_satuan)
    {
        $dataSatuan = $this->satuan->find($id_satuan);
        if (empty($dataSatuan)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Satuan Tidak ditemukan!');
        }

        $data['list_satuan'] = $dataSatuan;
        $data['title'] = "Ubah Satuan";
        $data['activeMenu'] = "tambahSatuan";

        echo view("admin/admin_header", $data);
        echo view('admin/form_satuan/form_update', $data);
        echo view("admin/admin_footer");
    }

    public function proses_satuan_update($id_satuan)
    {
        if (!$this->validate([
            'kode_satuan' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi'
                ]
            ],
            'nama_satuan' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi'
                ]
        ],

        ])) {
            session()->setFlashdata('error', $this->validator->listErrors());
            return redirect()->back();
        }

        $this->satuan->update($id_satuan, [
            'kode_satuan' => $this->request->getVar('kode_satuan'),
            'nama_satuan' => $this->request->getVar('nama_satuan')
        ]);
        session()->setFlashdata('message', 'Ubah Data Satuan Berhasil');
        return redirect()->to('admin/tabel_satuanbarang');
    }

    function hapus_satuan($id_satuan)
    {
        $dataSatuan = $this->satuan->find($id_satuan);
        if (empty($dataSatuan)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Satuan Tidak ditemukan!');
        }
        $this->satuan->delete($id_satuan);
        session()->setFlashdata('message', 'Hapus Data Satuan Berhasil');
        return redirect()->to('admin/tabel_satuanbarang');
    }

    public function tabel_satuanbarang()
    {
        $data['list_data'] = $this->satuan->findAll();
        $data['title'] = "Tabel Satuan Barang";
        $data['activeMenu'] = "tabelSatuan";

        echo view("admin/admin_header", $data);
        echo view('admin/tabel/tabel_satuan', $data);
        echo view("admin/admin_footer");
    }

    ####################################
        // END DATA SATUAN
    ####################################

    ####################################
        // PROFILE
    ####################################

    public function profil()
    {        
        $data['title'] = "Profil";
        $data['activeMenu'] = "profil";

        echo view("admin/admin_header", $data);
        echo view('admin/profil', $data);
        echo view("admin/admin_footer");

        
    }

    ####################################
        // END PROFIL
    ####################################

    ####################################
        // PENGGUNA
    ####################################

    public function pengguna()
    {        
        $data['list_pengguna'] = $this->pengguna->findAll();
        $data['title'] = "Pengguna";
        $data['activeMenu'] = "pengguna";

        echo view("admin/admin_header", $data);
        echo view('admin/pengguna', $data);
        echo view("admin/admin_footer");

        
    }
    
    public function tambah_pengguna()
    {
        $data['title'] = "Tambah Pengguna";
        $data['activeMenu'] = "pengguna";

        echo view("admin/admin_header", $data);
        echo view('admin/form_pengguna/form_insert', $data);
        echo view("admin/admin_footer");
    }
    
    public function proses_tambah_pengguna()
    {
        if (!$this->validate([
        'username' => [
            'rules' => 'required|min_length[4]|max_length[30]',
            'errors' => [
                'required' => '{field} harus diisi',
                'min_length' => 'Nilai yang diberikan ({value}) untuk {field} harus memiliki minimal {param} karakter!',
                'max_length' => '{field} tidak boleh melebihi {param} karakter.'
            ]
        ],
        'password' => [
            'rules' => 'required|min_length[4]|max_length[30]',
            'errors' => [
                'required' => '{field} harus diisi',
                'min_length' => '{field} harus memiliki minimal {param} karakter.',
                'max_length' => '{field} tidak boleh melebihi {param} karakter.'
            ]
        ],
        'password2' => [
            'rules' => 'required|matches[password]',
            'errors' => [
                'required' => 'ulangi password harus diisi',
                'matches' => 'password harus sama'
            ]
        ],
        'role' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],

        ])) {
        session()->setFlashdata('error', $this->validator->listErrors());
        return redirect()->back()->withInput();
        }

        $this->pengguna->insert([
        'username' => $this->request->getVar('username'),
        'password' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT),
        'role' => $this->request->getVar('role')
        ]);
        session()->setFlashdata('message', 'Tambah Pengguna Berhasil');
        return redirect()->to('/admin/pengguna');
    }

    function ubah_pengguna($id)
    {
        $dataPengguna = $this->pengguna->find($id);
        if (empty($dataPengguna)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Pengguna Tidak ditemukan!');
        }
        $data['list_data'] = $dataPengguna;
        $data['title'] = "Ubah Pengguna";
        $data['activeMenu'] = "pengguna";

        echo view("admin/admin_header", $data);
        echo view('admin/form_pengguna/form_update', $data);
        echo view("admin/admin_footer");
    }

    public function proses_ubah_pengguna($id)
    {
        if (!$this->validate([
        'username' => [
            'rules' => 'required|min_length[4]|max_length[30]',
            'errors' => [
                'required' => '{field} harus diisi',
                'min_length' => 'Nilai yang diberikan ({value}) untuk {field} harus memiliki minimal {param} karakter!',
                'max_length' => '{field} tidak boleh melebihi {param} karakter.'
            ]
        ],
        // 'password' => [
        //     'rules' => 'required|min_length[4]|max_length[30]',
        //     'errors' => [
        //         'required' => '{field} harus diisi',
        //         'min_length' => '{field} harus memiliki minimal {param} karakter.',
        //         'max_length' => '{field} tidak boleh melebihi {param} karakter.'
        //     ]
        // ],
        // 'password2' => [
        //     'rules' => 'required|matches[password]',
        //     'errors' => [
        //         'required' => 'ulangi password harus diisi',
        //         'matches' => 'password harus sama'
        //     ]
        // ],
        'role' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],

        ])) {
            session()->setFlashdata('error', $this->validator->listErrors());
            return redirect()->back();
        }

        $this->pengguna->update($id, [
            'username' => $this->request->getVar('username'),
            // 'password' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT),
            'role' => $this->request->getVar('role')
            ]);
        session()->setFlashdata('message', 'Ubah Pengguna Berhasil');
        return redirect()->to('admin/pengguna');
    }

    function hapus_pengguna($id)
    {
        $dataPengguna = $this->pengguna->find($id);
        if (empty($dataPengguna)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Pengguna Tidak ditemukan!');
        }
        $this->pengguna->delete($id);
        session()->setFlashdata('message', 'Hapus Pengguna Berhasil');
        return redirect()->to('admin/pengguna');
    }

    ####################################
        // END PENGGUNA
    ####################################
}
