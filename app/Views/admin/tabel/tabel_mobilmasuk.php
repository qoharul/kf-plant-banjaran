
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title"><i class="fa fa-table" aria-hidden="true"></i> Stok Mobil</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <a href="<?=base_url('admin/form_mobilmasuk')?>" style="margin-bottom:35px;" type="button" class="btn btn-primary" name="tambah_data"><i class="fa fa-plus-circle" aria-hidden="true"></i> Tambah Data</a>
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>ID Mobil</th>
                      <th>Merk</th>
                      <th>Tipe</th>
                      <th>Nomor Polisi</th>
                      <th>Tahun</th>
                      <th>Diperuntukkan</th>
                      <th>Status</th>
                      <th>Ubah</th>
                      <th>Hapus</th>
                      <th>Pinjamkan</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <?php if($list_data){?>
                      <?php $no = 1;?>
                      <?php foreach($list_data as $dd): ?>
                      <td><?=$no?></td>
                      <td><?=$dd['id_mobil']; ?></td>
                      <td><?=$dd['merk_mobil']; ?></td>
                      <td><?=$dd['tipe_mobil']; ?></td>
                      <td><?=$dd['plat_mobil']; ?></td>
                      <td><?=$dd['tahun_mobil']; ?></td>
                      <td><?=$dd['diperuntukkan']; ?></td>
                      <td>
                        <?php if($dd['jumlah'] == 0){ ?>
                          <span class="badge badge-danger">Tidak Tersedia</span>
                        <?php }
                        else{ ?>
                          <span class="badge badge-primary">Tersedia <?=$dd['jumlah']?> Mobil</span>
                        <?php } ?>
                      <td align="center"><a type="button" class="btn btn-info"  href="<?=base_url('admin/ubah_mobil/'.$dd['id_mobil'])?>" name="btn_update" style="margin:auto;"><i class="fas fa-pencil-alt" aria-hidden="true"></i></a></td>
                      <td align="center"><a type="button" class="btn btn-danger"  href="<?=base_url('admin/hapus_mobil/'.$dd['id_mobil'])?>" name="btn_delete" style="margin:auto;"><i class="fas fa-trash-alt" aria-hidden="true" onclick="return confirm('Apakah Anda yakin ingin menghapus data?')"></i></a></td>
                      <td align="center">
                        <?php if($dd['jumlah'] <= 0){ ?>
                          <a>-</a>
                        <?php }
                        else{ ?>
                          <a type="button" class="btn btn-success btn-mobilkeluar"  href="<?=base_url('admin/mobil_keluar/'.$dd['id_mobil'])?>" name="btn_mobilkeluar" style="margin:auto;"><i class="fas fa-car-alt" aria-hidden="true"></i></a>
                        <?php } ?> 
                      </td>
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
                      <th>ID Mobil</th>
                      <th>Merk</th>
                      <th>Tipe</th>
                      <th>Nomor Polisi</th>
                      <th>Tahun</th>
                      <th>Diperuntukkan</th>
                      <th>Status</th>
                      <th>Ubah</th>
                      <th>Hapus</th>
                      <th>Pinjamkan</th>
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