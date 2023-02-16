<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title"><i class="fa fa-table" aria-hidden="true"></i> Data Riwayat Peminjaman Mobil Anda</h3>
          </div>
          <!-- /.card-header -->
          <!-- /card-body -->
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Status Penerimaan</th>
                  <th>Nomor Peminjaman</th>
                  <th>Nama</th>
                  <th>Telepon</th>
                  <th>Tanggal Berangkat</th>
                  <th>Rencana Tanggal Kembali</th>
                  <th>Tujuan</th>
                  <th>No Polisi</th>
                  <th>Merk</th>
                  <th>Tahun Mobil</th>
                  <th>Status Pengajuan</th>
                  <th>Status Pengembalian</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <?php foreach($list_mobil->getResult() as $key=>$row)
                  {?>
                    <td><?= ($key+1);?></td>
                    <td style="text-align:center;">
                      <?php if($row->status_diterima == "Diterima"){
                        echo "Telah Diterima";
                      }elseif($row->status_pengajuan == "Disetujui"){ ?>
                        <div class="row">
                            <a type="button" class="btn btn-success" href="<?= base_url('pegawai/terima_mobil/'.$row->id) ?>" name="btn_danger"><i class="fas fa-people-carry"></i>Terima Mobil</a>
                        </div>
                      <?php }else{ 
                        echo "Menunggu Persetujuan";
                      } ?>
                    </td>
                    <td><?= $row->id;?></td>
                    <td><?= $row->nama_peminjam;?></td>
                    <td><?= $row->telp_peminjam;?></td>
                    <td><?= $row->tanggal_berangkat;?></td>
                    <td><?= $row->tanggal_kembali;?></td>
                    <td><?= $row->tujuan_meminjam;?></td>
                    <td><?= $row->plat_mobil;?></td>
                    <td><?= $row->merk_mobil;?></td>
                    <td><?= $row->tahun_mobil;?></td>
                    <td style="text-align:center;">
                      <?php if($row->status_pengajuan == "Disetujui"){
                        echo "Disetujui";
                      }else{ 
                        echo "Belum Disetujui";
                      } ?>
                    </td>

                    <td style="text-align:center;">
                      <?php if($row->status_pinjaman == "Selesai"){
                        echo "Telah Dikembalikan pada tanggal <b>$row->tanggal_dikembalikan</b>";
                      }else{
                        echo "Belum Dikembalikan";
                      } ?>
                    </td>  
                </tr>
                  <?php }?>
              </tbody>
              <tfoot>
                <tr>
                  <th>No</th>
                  <th>Nomor Peminjaman</th>
                  <th>Nama</th>
                  <th>Telepon</th>
                  <th>Tanggal Berangkat</th>
                  <th>Rencana Tanggal Kembali</th>
                  <th>Tujuan</th>
                  <th>No Polisi</th>
                  <th>Merk</th>
                  <th>Tahun Mobil</th>
                  <th>Status Pengajuan</th>
                  <th>Status Penerimaan</th>
                  <th>Status Pengembalian</th>
                </tr>
              </tfoot>
            </table>
          </div>
          <!-- /.card-body -->
          <!-- <div class="card-header">
            <h3 class="card-title"><i class="fa fa-table" aria-hidden="true"></i> Data Pengajuan Permintaan Mobil</h3>
          </div>
        </div>
        <!-- /.card -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </div>
  <!-- /.container-fluid -->
</section>
<!-- /.content -->