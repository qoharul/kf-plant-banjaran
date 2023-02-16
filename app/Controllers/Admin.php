<?php

namespace App\Controllers;

use App\Models\M_AdminQuery;
use App\Models\M_MobilMasuk;
use App\Models\M_MobilKeluar;
use App\Models\M_MobilKeluarQuery;
use App\Models\M_Satuan;
use App\Models\UserModel;
use App\Models\M_ListPegawai;

class Admin extends BaseController
{

    public function __construct()
    {
        $this->session = session();       
        $this->AdminQuery = new M_AdminQuery();
        $this->mobilMasuk = new M_MobilMasuk();
        $this->mobilKeluar = new M_MobilKeluar();
        $this->mobilKeluarQuery = new M_MobilKeluarQuery();
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
        
        $jumlah_notif_mobil = $this->AdminQuery->notifikasi_mobil()->getResult();
        foreach($jumlah_notif_mobil as $key=>$row)
        {
            $b = $row->id;
        }
        $data['jumlah_notif'] = $b;
        
        $data['notifikasi_mobil'] = $this->AdminQuery->notifikasi_mobil();  

        $data['title'] = "Menu Utama";
        $data['activeMenu'] = "dashboard";      
        $data['stokMobilMasuk'] = $this->AdminQuery->sum_mobil_masuk();
        $data['stokMobilKeluar'] = $this->AdminQuery->sum_mobil_keluar();


        echo view("admin/admin_header", $data);
        echo view('admin/index', $data);
        echo view("admin/admin_footer");
    }

    ####################################
            // DATA MOBIL MASUK
    ####################################
  
    public function form_mobilmasuk()
    {
        
        $jumlah_notif_mobil = $this->AdminQuery->notifikasi_mobil()->getResult();
        foreach($jumlah_notif_mobil as $key=>$row)
        {
            $b = $row->id;
        }
        $data['jumlah_notif'] = $b;
        
        $data['notifikasi_mobil'] = $this->AdminQuery->notifikasi_mobil();  


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
            'rules' => 'required|is_unique[tb_mobil_masuk.plat_mobil,id_mobil,{id_mobil}]',
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
        // 'jumlah' => [
        //     'rules' => 'required',
        //     'errors' => [
        //         'required' => '{field} harus diisi'
        //     ]
        // ],
        // 'diperuntukkan' => [
        //     'rules' => 'required',
        //     'errors' => [
        //         'required' => '{field} harus diisi'
        //     ]
        // ],

        ])) {
        session()->setFlashdata('error', $this->validator->listErrors());
        return redirect()->back()->withInput();
        }

        $this->mobilMasuk->insert([
            'merk_mobil' => $this->request->getVar('merk_mobil'),
            'tipe_mobil' => $this->request->getVar('tipe_mobil'),
            'plat_mobil' => $this->request->getVar('plat_mobil'),
            'tahun_mobil' => $this->request->getVar('tahun_mobil'),
            'jumlah' => "1",
            'diperuntukkan' => $this->request->getVar('diperuntukkan')
        ]);
        session()->setFlashdata('message', 'Tambah Data Mobil Berhasil');
        return redirect()->to('/admin/tabel_mobilmasuk');
    }

    function ubah_mobil($id_mobil)
    {
        $jumlah_notif_mobil = $this->AdminQuery->notifikasi_mobil()->getResult();
        foreach($jumlah_notif_mobil as $key=>$row)
        {
            $b = $row->id;
        }
        $data['jumlah_notif'] = $b;
        
        $data['notifikasi_mobil'] = $this->AdminQuery->notifikasi_mobil();  

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
        $jumlah_notif_mobil = $this->AdminQuery->notifikasi_mobil()->getResult();
        foreach($jumlah_notif_mobil as $key=>$row)
        {
            $b = $row->id;
        }
        $data['jumlah_notif'] = $b;
        
        $data['notifikasi_mobil'] = $this->AdminQuery->notifikasi_mobil();  


        $data['list_data'] = $this->mobilMasuk->findAll();
        $data['title'] = "Tabel Mobil Masuk";
        $data['activeMenu'] = "mobil";
        // $data['notifikasi'] = $this->AdminQuery->notifikasi();

        echo view("admin/admin_header", $data);
        echo view('admin/tabel/tabel_mobilmasuk', $data);
        echo view("admin/admin_footer");
    }

    public function tabel_mobilkeluar()
    {
        $jumlah_notif_mobil = $this->AdminQuery->notifikasi_mobil()->getResult();
        foreach($jumlah_notif_mobil as $key=>$row)
        {
            $b = $row->id;
        }
        $data['jumlah_notif'] = $b;
        
        $data['notifikasi_mobil'] = $this->AdminQuery->notifikasi_mobil();  

        $data['list_data'] = $this->AdminQuery->get_where_mobil_belum_disetujui();
        $data['title'] = "Riwayat Mobil Dipinjam";
        $data['activeMenu'] = "laporanMobil";
        // $data['notifikasi'] = $this->AdminQuery->notifikasi();

        echo view("admin/admin_header", $data);
        echo view('admin/tabel/tabel_mobilkeluar', $data);
        echo view("admin/admin_footer");
    }

    public function mobil_keluar($id_mobil)
    {
        $jumlah_notif_mobil = $this->AdminQuery->notifikasi_mobil()->getResult();
        foreach($jumlah_notif_mobil as $key=>$row)
        {
            $b = $row->id;
        }
        $data['jumlah_notif'] = $b;
        
        $data['notifikasi_mobil'] = $this->AdminQuery->notifikasi_mobil();  


        $request = \Config\Services::request();
        $uri = $request->uri->getSegment(3);
        $where = array( 'id_mobil' => $uri);

        
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
            'status_pengajuan' => "Disetujui",
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
        $jumlah_notif_mobil = $this->AdminQuery->notifikasi_mobil()->getResult();
        foreach($jumlah_notif_mobil as $key=>$row)
        {
            $b = $row->id;
        }
        $data['jumlah_notif'] = $b;
        
        $data['notifikasi_mobil'] = $this->AdminQuery->notifikasi_mobil();  


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
                'jumlah' => 1
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
        return redirect()->to('admin/pengajuan_mobil');


    }

    ####################################
        // END DATA MOBIL MASUK
    ####################################


    ####################################
            // DATA PENGAJUAN
    ####################################
    
    public function permintaan_mobil($id)
    {        
        $jumlah_notif_mobil = $this->AdminQuery->notifikasi_mobil()->getResult();
        foreach($jumlah_notif_mobil as $key=>$row)
        {
            $b = $row->id;
        }
        $data['jumlah_notif'] = $b;
        
        $data['notifikasi_mobil'] = $this->AdminQuery->notifikasi_mobil();  


        $where = array( 'id' => $id);        
        
        $dataMobilKeluar = $this->mobilKeluar->find($id);
        if (empty($dataMobilKeluar)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Mobil Tidak ditemukan!');
        }

        $data['list_data'] = $dataMobilKeluar;
        $data['title'] = "Permintaan Mobil";
        $data['activeMenu'] = "mobilKeluar";

        echo view("admin/admin_header", $data);
        echo view('admin/permintaan_mobil/form_update',$data);
        echo view("admin/admin_footer");
    }

    public function proses_permintaan_mobil($id)
    {
        if (!$this->validate([
            'sopir' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi'
                ]
            ],
            ])) {
                session()->setFlashdata('error', $this->validator->listErrors());
                return redirect()->back();
            }

            // $jumlah = $this->request->getVar('jumlah');
    
            $this->mobilKeluar->update($id, [
                'status_pengajuan' => "Disetujui",
                'sopir' => $this->request->getVar('sopir')
            ]);
            session()->setFlashdata('message', 'Permintaan Mobil Telah Disetujui');
            return redirect()->to('admin/pengajuan_mobil');
    }
    
    public function pengajuan_mobil()
    {
        $jumlah_notif_mobil = $this->AdminQuery->notifikasi_mobil()->getResult();
        foreach($jumlah_notif_mobil as $key=>$row)
        {
            $b = $row->id;
        }
        $data['jumlah_notif'] = $b;
        
        $data['notifikasi_mobil'] = $this->AdminQuery->notifikasi_mobil();  
        $data['list_mobil'] = $this->mobilKeluarQuery->get_where();
        $data['title'] = "Konfirmasi Pengajuan";
        $data['activeMenu'] = "pengajuanMobil";

        echo view("admin/admin_header", $data);
        echo view('admin/tabel/tabel_pengajuan_mobil', $data);
        echo view("admin/admin_footer");
    }  

    ####################################
        // END DATA PENGAJUAN
    ####################################


    ####################################
        // PENGGUNA
    ####################################

    public function pengguna()
    {        
        $jumlah_notif_mobil = $this->AdminQuery->notifikasi_mobil()->getResult();
        foreach($jumlah_notif_mobil as $key=>$row)
        {
            $b = $row->id;
        }
        $data['jumlah_notif'] = $b;
        
        $data['notifikasi_mobil'] = $this->AdminQuery->notifikasi_mobil();  

        $data['list_pengguna'] = $this->pengguna->findAll();
        $data['title'] = "Pengguna";
        $data['activeMenu'] = "pengguna";
        // $data['notifikasi'] = $this->AdminQuery->notifikasi();

        echo view("admin/admin_header", $data);
        echo view('admin/pengguna', $data);
        echo view("admin/admin_footer");

        
    }
    
    public function tambah_pengguna()
    {
        $jumlah_notif_mobil = $this->AdminQuery->notifikasi_mobil()->getResult();
        foreach($jumlah_notif_mobil as $key=>$row)
        {
            $b = $row->id;
        }
        $data['jumlah_notif'] = $b;
        
        $data['notifikasi_mobil'] = $this->AdminQuery->notifikasi_mobil();  

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
            'rules' => 'required|min_length[4]|max_length[30]|is_unique[user.username,id,{id}]',
            'errors' => [
                'required' => '{field} harus diisi',
                'min_length' => 'Nilai yang diberikan ({value}) untuk {field} harus memiliki minimal {param} karakter!',
                'max_length' => '{field} tidak boleh melebihi {param} karakter.',
                'is_unique' => '{field} untuk {value} sudah ada, silahkan coba lagi.'
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
        'nip' => [
            'rules' => 'required|is_unique[user.nip,id,{id}]',
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
        'telp' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} harus diisi'
            ]
        ],

        ])) {
        session()->setFlashdata('error', $this->validator->listErrors());
        return redirect()->back()->withInput();
        }        
        
        $data = $this->request->getPost();
        
        //buat salt
        $salt = uniqid('', true);
        
        //hash password digabung dengan salt
        $password = md5($data['password']).$salt;

        $this->pengguna->insert([
        'username' => $this->request->getVar('username'),
        'password' => $password,
        'salt' => $salt,
        'role' => $this->request->getVar('role'),
        'nip' => $this->request->getVar('nip'),
        'nama' => $this->request->getVar('nama'),
        'jabatan' => $this->request->getVar('jabatan'),
        'alamat' => $this->request->getVar('alamat'),
        'telp' => $this->request->getVar('telp')
        ]);
        session()->setFlashdata('message', 'Tambah Pengguna Berhasil');
        return redirect()->to('/admin/pengguna');
    }

    function ubah_pengguna($id)
    {
        $jumlah_notif_mobil = $this->AdminQuery->notifikasi_mobil()->getResult();
        foreach($jumlah_notif_mobil as $key=>$row)
        {
            $b = $row->id;
        }
        $data['jumlah_notif'] = $b;
        
        $data['notifikasi_mobil'] = $this->AdminQuery->notifikasi_mobil();  


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
        'nama' => [
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
        'telp' => [
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
            // 'password' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT),
            'role' => $this->request->getVar('role'),
            'nama' => $this->request->getVar('nama'),
            'bagian' => $this->request->getVar('bagian'),
            'pangkat' => $this->request->getVar('pangkat'),
            'jabatan' => $this->request->getVar('jabatan'),
            'alamat' => $this->request->getVar('alamat'),
            'telp' => $this->request->getVar('telp')
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
