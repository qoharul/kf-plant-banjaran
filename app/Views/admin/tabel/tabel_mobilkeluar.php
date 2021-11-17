<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title"><i class="fa fa-table" aria-hidden="true"></i> Data Peminjam Mobil</h3>
          </div>
          <!-- /.card-header -->
          <!-- /card-body -->
          <div class="card-body">
            <a href="<?=base_url('admin/tabel_mobilmasuk')?>" style="margin-bottom:10px;" type="button" class="btn btn-primary" name="tambah_data"><i class="fa fa-plus-circle" aria-hidden="true"></i> Tambah Data Peminjam Mobil</a>
            <a href="<?=base_url('report/mobilKeluarManual')?>" style="margin-bottom:10px;" type="button" class="btn btn-warning" name="laporan_data"><i class="fa fa-file-text" aria-hidden="true"></i> Invoice Manual</a>
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>ID</th>
                  <th>Nama Mobil</th>
                  <th>NIP</th>
                  <th>Merk Mobil</th>
                  <th>Tahun</th>
                  <th>Nomor Polisi</th>
                  <th>Tanggal Berangkat</th>
                  <th>Tanggal Kembali</th>
                  <th>Tujuan</th>
                  <th>Tanggal Dikembalikan</th>
                  <th>Status Pinjaman</th>
                  <th>Aksi Pinjaman</th>
                  <th>Invoice</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <?php if(is_array($list_data)){ ?>
                  <?php $no = 1;?>
                  <?php foreach($list_data as $dd): ?>
                    <td><?=$no?></td>
                    <td><?=$dd['id']?></td>
                    <td><?=$dd['nama_peminjam']?></td>
                    <td><?=$dd['nip_peminjam']?></td>
                    <td><?=$dd['merk_mobil']?></td>
                    <td><?=$dd['tahun_mobil']?></td>
                    <td><?=$dd['plat_mobil']?></td>
                    <td><?=$dd['tanggal_berangkat']?></td>
                    <td><?=$dd['tanggal_kembali']?></td>
                    <td><?=$dd['tujuan_meminjam']?></td>
                    <td><?=$dd['tanggal_dikembalikan']?></td>
                    <td>
                      <?php if($dd['tanggal_dikembalikan'] == "-"){
                        echo "Belum Selesai";
                      }else{
                        echo "Selesai";
                      }?>
                    </td>
                    <td style="text-align:center;">
                      <?php if($dd['status_pinjaman'] == "Selesai"){
                        echo "-";
                      }else{ ?>
                        <div class="row">
                            <a type="button" class="btn btn-success" href="<?= base_url('admin/pengembalian_mobil/'.$dd['id']) ?>" name="btn_danger"><i class="fas fa-check-circle"></i></a>
                            <a type="button" class="btn btn-danger" href="<?=base_url('admin/batal_sewa/'.$dd['id']) ?>" name="btn_danger"><i class="fas fa-times-circle" aria-hidden="true"></i></a>
                        </div>
                      <?php } ?>
                    </td>
                    <td style="text-align:center;"><a type="button" class="btn btn-warning"  href="<?=base_url('report/mobilDipinjam/'.$dd['id_mobil'].'/'.$dd['tanggal_berangkat'])?>" name="btn_report" style="margin:auto;"><i class="fas fa-file-alt" aria-hidden="true"></i></a></td>
                </tr>
              <?php $no++; ?>
              <?php endforeach;?>
              <?php }else { ?>
                    <td colspan="7" align="center"><strong>Data Kosong</strong></td>
              <?php } ?>
                </tbody>
                <tfoot>

                <tr>
                  <th>No</th>
                  <th>ID</th>
                  <th>Nama Mobil</th>
                  <th>NIP</th>
                  <th>Merk Mobil</th>
                  <th>Tahun</th>
                  <th>Nomor Polisi</th>
                  <th>Tanggal Berangkat</th>
                  <th>Tanggal Kembali</th>
                  <th>Tujuan</th>
                  <th>Tanggal Dikembalikan</th>
                  <th>Status Pinjaman</th>
                  <th>Aksi Pinjaman</th>
                  <th>Invoice</th>
                </tr>
              </tfoot>
            </table>
          </div>
          <!-- /.card-body -->
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