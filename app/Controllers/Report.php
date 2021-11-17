<?php

namespace App\Controllers;

use TCPDF;

use App\Models\M_BarangMasuk;
use App\Models\M_BarangKeluar;
use App\Models\M_MobilMasuk;
use App\Models\M_MobilKeluar;
use App\Models\M_Satuan;
use App\Models\UserModel;


class Report extends BaseController
{

    public function __construct()
    {
        $this->barangMasuk = new M_BarangMasuk();
        $this->barangKeluar = new M_BarangKeluar();
        $this->mobilMasuk = new M_MobilMasuk();
        $this->mobilKeluar = new M_MobilKeluar();
        $this->satuan = new M_Satuan();
        $this->akun = new UserModel();
    }    
    
    // public function index()
    // {
    //      $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
    // }

    public function barangKeluarManual()
    {
  
      $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
  
      // document informasi
      $pdf->SetCreator('Web Aplikasi Gudang');
      $pdf->SetTitle('Laporan Data Barang Keluar');
      $pdf->SetSubject('Barang Keluar');
  
      //header Data
      $pdf->SetHeaderData('unsada.jpg',30,'Laporan Data','Barang Keluar',array(203, 58, 44),array(0, 0, 0));
      $pdf->SetFooterData(array(255, 255, 255), array(255, 255, 255));
  
  
      $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN,'',PDF_FONT_SIZE_MAIN));
      $pdf->setFooterFont(Array(PDF_FONT_NAME_MAIN,'',PDF_FONT_SIZE_MAIN));
  
      $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
  
      //set margin
      $pdf->SetMargins(PDF_MARGIN_LEFT,PDF_MARGIN_TOP + 10,PDF_MARGIN_RIGHT);
      $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
      $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
  
      $pdf->SetAutoPageBreak(FALSE, PDF_MARGIN_BOTTOM - 5);
  
      //SET Scaling ImagickPixel
      $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
  
      //FONT Subsetting
      $pdf->setFontSubsetting(true);
  
      $pdf->SetFont('helvetica','',14,'',true);
  
      $pdf->AddPage('L');
  
      $html=
        '<div>
          <h1 align="center">Invoice Bukti Pengeluaran Barang</h1>
          <p>No Id Transaksi  :</p>
          <p>Ditunjukan Untuk :</p>
          <p>Tanggal          :</p>
          <p>Po.Customer      :</p>
  
  
          <table border="1">
            <tr>
              <th style="width:40px" align="center">No</th>
              <th style="width:110px" align="center">ID Transaksi</th>
              <th style="width:110px" align="center">Tanggal Masuk</th>
              <th style="width:110px" align="center">Tanggal Keluar</th>
              <th style="width:130px" align="center">Bagian</th>
              <th style="width:140px" align="center">Kode Barang</th>
              <th style="width:140px" align="center">Nama Barang</th>
              <th style="width:80px" align="center">Satuan</th>
              <th style="width:80px" align="center">Jumlah</th>
            </tr>';
  
          $html .= '<tr>
                      <td style="height:180px"></td>
                      <td  style="height:180px"></td>
                      <td style="height:180px"></td>
                      <td style="height:180px"></td>
                      <td style="height:180px"></td>
                      <td style="height:180px"></td>
                      <td style="height:180px"></td>
                      <td style="height:180px"></td>
                      <td style="height:180px"></td>
                   </tr>
                   <tr>
                    <td align="center" colspan="8">Jumlah</td>
                    <td></td>
                   </tr>';
  
  
  
          $html .='
              </table>
              <h6>Mengetahui</h6><br>
              <h6>Admin</h6>
            </div>';
  
      $pdf->writeHTMLCell(0, 0, '', '', $html, 0, 0, 0, true, '', true);
    //   $this->response->setHeader("Content-Type", "application/pdf");
      $this->response->setContentType('application/pdf');
  
      $pdf->Output('contoh_report.pdf','I');
    }
  
    public function barangKeluar()
    {        
        $request = \Config\Services::request();
        // $uri = new \CodeIgniter\HTTP\URI();
        // $uri = service('uri');
      $id = $request->uri->getSegment(3);
    //   $tgl1 = $request->uri->getSegment(4);
    //   $tgl2 = $request->uri->getSegment(5);
    //   $tgl3 = $request->uri->getSegment(6);
    //   $ls   = array('id_transaksi' => $id ,'tanggal_keluar' => $tgl1.'/'.$tgl2.'/'.$tgl3);  
      $ls   = array('id_transaksi' => $id );        
    //   $dataBarangKeluar = $this->barangKeluar->find($id_transaksi,$ls);
    //   if (empty($dataBarangKeluar)) {
    //       throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Barang Tidak ditemukan!');
    //   }
      $data = $this->barangKeluar->find('tb_barang_keluar',$ls);
  
      $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
  
      // document informasi
      $pdf->SetCreator('Web Aplikasi Gudang');
      $pdf->SetTitle('Laporan Data Barang Keluar');
      $pdf->SetSubject('Barang Keluar');
  
      //header Data
      $pdf->SetHeaderData('unsada.jpg',30,'Laporan Data','Barang Keluar',array(203, 58, 44),array(0, 0, 0));
      $pdf->SetFooterData(array(255, 255, 255), array(255, 255, 255));
  
  
      $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN,'',PDF_FONT_SIZE_MAIN));
      $pdf->setFooterFont(Array(PDF_FONT_NAME_MAIN,'',PDF_FONT_SIZE_MAIN));
  
      $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
  
      //set margin
      $pdf->SetMargins(PDF_MARGIN_LEFT,PDF_MARGIN_TOP + 10,PDF_MARGIN_RIGHT);
      $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
      $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
  
      $pdf->SetAutoPageBreak(FALSE, PDF_MARGIN_BOTTOM - 5);
  
      //SET Scaling ImagickPixel
      $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
  
      //FONT Subsetting
      $pdf->setFontSubsetting(true);
  
      $pdf->SetFont('helvetica','',14,'',true);
  
      $pdf->AddPage('L');
  
      $html=
        '<div>
          <h1 align="center">Invoice Bukti Pengeluaran Barang</h1><br>
          <p>No Id Transaksi  : '.$id.'</p>
          <p>Ditunjukan Untuk :</p>
          <p>Tanggal          : </p>
          <p>Po.Customer      :</p>
  
  
          <table border="1">
            <tr>
              <th style="width:40px" align="center">No</th>
              <th style="width:110px" align="center">ID Transaksi</th>
              <th style="width:110px" align="center">Tanggal Masuk</th>
              <th style="width:110px" align="center">Tanggal Keluar</th>
              <th style="width:130px" align="center">Bagian</th>
              <th style="width:140px" align="center">Kode Barang</th>
              <th style="width:140px" align="center">Nama Barang</th>
              <th style="width:80px" align="center">Satuan</th>
              <th style="width:80px" align="center">Jumlah</th>
            </tr>';
  
  
            $no = 1;
            if (is_array($data) || is_object($data))
            {
                foreach($data as $d){
                $html .= '<tr>';
                $html .= '<td align="center">'.$no.'</td>';
                $html .= '<td align="center">'.$d->id_transaksi.'</td>';
                $html .= '<td align="center">'.$d->tanggal_masuk.'</td>';
                $html .= '<td align="center">'.$d->tanggal_keluar.'</td>';
                $html .= '<td align="center">'.$d->lokasi.'</td>';
                $html .= '<td align="center">'.$d->kode_barang.'</td>';
                $html .= '<td align="center">'.$d->nama_barang.'</td>';
                $html .= '<td align="center">'.$d->satuan.'</td>';
                $html .= '<td align="center">'.$d->jumlah.'</td>';
                $html .= '</tr>';
    
                $html .= '<tr>';
                $html .= '<td align="center" colspan="8"><b>Jumlah</b></td>';
                $html .= '<td align="center">'.$d->jumlah.'</td>';
                $html .= '</tr>';
                $no++;
                }
  
  
                    $html .='
                        </table><br>
                        <h6>Mengetahui</h6><br><br><br>
                        <h6>Pengelola Gudang</h6>
                        </div>';
            
                $pdf->writeHTMLCell(0, 0, '', '', $html, 0, 0, 0, true, '', true);
            
                $pdf->Output('Invoice---'.$d->tanggal_keluar.'---'.$d->lokasi.'---'.$d->nama_barang.'_'.$d->jumlah.'_'.$d->satuan.'.pdf','I');
  
            }
    }
  
    public function mobilDipinjamManual()
    {
      $id = $this->uri->segment(3);
      $tgl1 = $this->uri->segment(4);
      $tgl2 = $this->uri->segment(5);
      $tgl3 = $this->uri->segment(6);
      $ls   = array('id_transaksi' => $id ,'tanggal_berangkat' => $tgl1.'/'.$tgl2.'/'.$tgl3);
      $data = $this->M_admin->get_data('tb_mobil_keluar',$ls);
      $titik = '..............................................................................................';
  
      $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
  
      // document informasi
      $pdf->SetCreator('Gudang Kesbangpol');
      $pdf->SetTitle('Laporan Data Mobil Dipinjam');
      $pdf->SetSubject('Mobil Dipinjam');
  
      //header Data
      $pdf->SetHeaderData('kesbangpol.jpg',25,'Laporan Data','Mobil Dipinjam',array(203, 58, 44),array(0, 0, 0));
      $pdf->SetFooterData(array(255, 255, 255), array(255, 255, 255));
  
  
      $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN,'',PDF_FONT_SIZE_MAIN));
      $pdf->setFooterFont(Array(PDF_FONT_NAME_MAIN,'',PDF_FONT_SIZE_MAIN));
  
      $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
  
      //set margin
      $pdf->SetMargins(PDF_MARGIN_LEFT,PDF_MARGIN_TOP + 10,PDF_MARGIN_RIGHT);
      $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
      $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
  
      $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
  
      //SET Scaling ImagickPixel
      $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
  
      //FONT Subsetting
      $pdf->setFontSubsetting(true);
  
      $pdf->SetFont('helvetica','',9.5,'',true);
  
      $pdf->AddPage('P');
  
      $html=
        '<div>
          <h3 align="center">FORMULIR PEMINJAMAN KENDARAAN DINAS</h3>
          <table border="0" >
            <tr>
              <td style="width:5%">
              </td>
              <td style="width:95%">
                <p>Yang bertandatangan dibawah ini : </p>
              </td>
            </tr>
  
            <tr>
              <td style="width:25%">
                <p>NAMA</p>
              </td>
              <td style="width:75%">
                <p>: ..............................................................................................</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>NIP</p>
              </td>
              <td>
                <p>: ..............................................................................................</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>PANGKAT/GOL</p>
              </td>
              <td>
                <p>: ..............................................................................................</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>JABATAN</p>
              </td>
              <td>
                <p>: ..............................................................................................</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>ALAMAT</p>
              </td>
              <td>
                <p>: ..............................................................................................</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>NO TELP</p>
              </td>
              <td>
                <p>: ..............................................................................................</p>
              </td>
            </tr>
            
            <tr>
              <td style="width:5%">
              </td>
              <td style="width:95%">
                <p>Bermaksud untuk menggunakan kendaraan dinas dengan penuh tanggung jawab : </p>
              </td>
            </tr>
  
            <tr>
              <td style="width:25%">
                <p>MERK/TYPE</p>
              </td>
              <td style="width:75%">
                <p>: ..............................................................................................</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>NO POLISI</p>
              </td>
              <td>
                <p>: ..............................................................................................</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>TUJUAN</p>
              </td>
              <td>
                <p>: ..............................................................................................</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>TANGGAL BERANGKAT</p>
              </td>
              <td>
                <p>: ..............................................................................................</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>TANGGAL KEMBALI *</p>
              </td>
              <td>
                <p>: ..............................................................................................</p>
              </td>
            </tr>
          </table>
  
          <p><i>*Diparaf oleh penerima kendaraan</i></p>
  
          <table align="center" border="0">
            <tr>
              <td style="width:40%">
                <p>Mengetahui, <br> Ka.Sub. Bag. Kepegawaian dan Umum</p>
              </td>
              <td style="width:60%">
                <p>Bandung, ................................. <br> Peminjam Kendaraan</p>
              </td>
            </tr>
  
            <br>
  
            <tr align="left">
              <td style="width:50%">
                <p>
                .....................................................................<br>
                NIP.</p>
              </td>
              <td style="width:50%">
                <p>
                .....................................................................<br>
                NIP.</p>
              </td>
            </tr>
          </table>
            </div>';
  
      $pdf->writeHTMLCell(0, 0, '', '', $html, 0, 0, 0, true, '', true);
  
      $pdf->Output('Invoice.pdf','I');
  
    }
  
    public function mobilDipinjam()
    {
      $id = $this->uri->segment(3);
      $tgl1 = $this->uri->segment(4);
      $tgl2 = $this->uri->segment(5);
      $tgl3 = $this->uri->segment(6);
      $ls   = array('id_transaksi' => $id ,'tanggal_berangkat' => $tgl1.'/'.$tgl2.'/'.$tgl3);
      $data = $this->M_admin->get_data('tb_mobil_keluar',$ls);
      $titik = '..............................................................................................';
  
      $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
  
      // document informasi
      $pdf->SetCreator('Gudang Kesbangpol');
      $pdf->SetTitle('Laporan Data Mobil Dipinjam');
      $pdf->SetSubject('Mobil Dipinjam');
  
      //header Data
      $pdf->SetHeaderData('kesbangpol.jpg',25,'Laporan Data','Mobil Dipinjam',array(203, 58, 44),array(0, 0, 0));
      $pdf->SetFooterData(array(255, 255, 255), array(255, 255, 255));
  
  
      $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN,'',PDF_FONT_SIZE_MAIN));
      $pdf->setFooterFont(Array(PDF_FONT_NAME_MAIN,'',PDF_FONT_SIZE_MAIN));
  
      $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
  
      //set margin
      $pdf->SetMargins(PDF_MARGIN_LEFT,PDF_MARGIN_TOP + 10,PDF_MARGIN_RIGHT);
      $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
      $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
  
      $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
  
      //SET Scaling ImagickPixel
      $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
  
      //FONT Subsetting
      $pdf->setFontSubsetting(true);
  
      $pdf->SetFont('helvetica','',9.5,'',true);
  
      $pdf->AddPage('P');
  
      $html=
        '<div>
          <h3 align="center">FORMULIR PEMINJAMAN KENDARAAN DINAS</h3>
          <table border="0" >
            <tr>
              <td style="width:5%">
              </td>
              <td style="width:95%">
                <p>Yang bertandatangan dibawah ini : </p>
              </td>
            </tr>
  
            <tr>
              <td style="width:25%">
                <p>NAMA</p>
              </td>';
              foreach($data as $d){
                $html .= '
              <td style="width:75%">
                <p>: '.$d->nama_peminjam.'</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>NIP</p>
              </td>
              <td>
                <p>: '.$d->nip_peminjam.'</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>PANGKAT/GOL</p>
              </td>
              <td>
                <p>: '.$d->pangkat_peminjam.'</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>JABATAN</p>
              </td>
              <td>
                <p>: '.$d->jabatan_peminjam.'</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>ALAMAT</p>
              </td>
              <td>
                <p>: '.$d->alamat_peminjam.'</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>NO TELP</p>
              </td>
              <td>
                <p>: '.$d->telp_peminjam.'</p>
              </td>
            </tr>
            
            <tr>
              <td style="width:5%">
              </td>
              <td style="width:95%">
                <p>Bermaksud untuk menggunakan kendaraan dinas dengan penuh tanggung jawab : </p>
              </td>
            </tr>
  
            <tr>
              <td style="width:25%">
                <p>MERK/TYPE</p>
              </td>
              <td style="width:75%">
                <p>: '.$d->merk_mobil.' / '.$d->tipe_mobil.'</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>NO POLISI</p>
              </td>
              <td>
                <p>: '.$d->plat_mobil.'</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>TUJUAN</p>
              </td>
              <td>
                <p>: '.$d->tujuan_meminjam.'</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>TANGGAL BERANGKAT</p>
              </td>
              <td>
                <p>: '.$d->tanggal_berangkat.'</p>
              </td>
            </tr>
  
            <tr>
              <td>
                <p>TANGGAL KEMBALI *</p>
              </td>
              <td>
                <p>: '.$d->tanggal_kembali.'</p>
              </td>
            </tr>
          </table>
  
          <p><i>*Diparaf oleh penerima kendaraan</i></p>
  
          <table align="center" border="0">
            <tr>
              <td style="width:40%">
                <p>Mengetahui, <br> Ka.Sub. Bag. Kepegawaian dan Umum</p>
              </td>
              <td style="width:60%">
                <p>Bandung, ................................. <br> Peminjam Kendaraan</p>
              </td>
            </tr>
  
            <br>
  
            <tr align="left">
              <td style="width:50%">
                <p>
                .....................................................................<br>
                NIP. 198609262015051001</p>
              </td>
              <td style="width:50%">
                <p>
                .....................................................................<br>
                NIP. '.$d->nip_peminjam.'</p>
              </td>
            </tr>';
          }
  
  
        $html .='
          </table>
            </div>';
  
      $pdf->writeHTMLCell(0, 0, '', '', $html, 0, 0, 0, true, '', true);
  
      $pdf->Output('Invoice.pdf','I');
  
    }
  
}
