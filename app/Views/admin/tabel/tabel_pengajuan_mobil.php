<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title"><i class="fa fa-table" aria-hidden="true"></i> Data Pengajuan Permintaan Mobil</h3>
          </div>
          <!-- /.card-header -->
          <!-- /card-body -->
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>ID</th>
                  <th>Tanggal Berangkat</th>
                  <th>Rencana Tanggal Kembali</th>
                  <th>Nama</th>
                  <th>NIP</th>
                  <th>Bagian</th>
                  <th>Pangkat</th>
                  <th>Jabatan</th>
                  <th>Alamat</th>
                  <th>Telepon</th>
                  <th>Tujuan</th>
                  <th>Merk</th>
                  <th>Tahun Mobil</th>
                  <th>No Polisi</th>
                  <th>Status Pengajuan</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <?php foreach($list_mobil->getResult() as $key=>$row)
                  {?>
                    <td><?= ($key+1);?></td>
                    <td><?= $row->id;?></td>
                    <td><?= $row->tanggal_berangkat;?></td>
                    <td><?= $row->tanggal_kembali;?></td>
                    <td><?= $row->nama_peminjam;?></td>
                    <td><?= $row->nip_peminjam;?></td>
                    <td><?= $row->bagian;?></td>
                    <td><?= $row->pangkat_peminjam;?></td>
                    <td><?= $row->jabatan_peminjam;?></td>
                    <td><?= $row->alamat_peminjam;?></td>
                    <td><?= $row->telp_peminjam;?></td>
                    <td><?= $row->tujuan_meminjam;?></td>
                    <td><?= $row->plat_mobil;?></td>
                    <td><?= $row->merk_mobil;?></td>
                    <td><?= $row->tahun_mobil;?></td>   
                    <td style="text-align:center;">
                      <?php if($row->status_pengajuan == "Disetujui"){
                        echo "Disetujui";
                      }else{ ?>
                        <div class="row">
                            <a type="button" class="btn btn-success" href="<?= base_url('admin/permintaan_mobil/'.$row->id) ?>" name="btn_danger"><i class="fas fa-check-circle"></i></a>
                            <a type="button" class="btn btn-danger" href="<?=base_url('admin/batal_sewa/'.$row->id) ?>" name="btn_danger"><i class="fas fa-times-circle" aria-hidden="true"></i></a>
                        </div>
                      <?php } ?>
                    </td>
                </tr>
                  <?php }?>
              </tbody>
              <tfoot>
                <tr>
                  <th>No</th>
                  <th>ID</th>
                  <th>Tanggal Berangkat</th>
                  <th>Rencana Tanggal Kembali</th>
                  <th>Nama</th>
                  <th>NIP</th>
                  <th>Bagian</th>
                  <th>Pangkat</th>
                  <th>Jabatan</th>
                  <th>Alamat</th>
                  <th>Telepon</th>
                  <th>Tujuan</th>
                  <th>Merk</th>
                  <th>Tahun Mobil</th>
                  <th>No Polisi</th>
                  <th>Status Pengajuan</th>
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