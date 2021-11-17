
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title"><i class="fa fa-table" aria-hidden="true"></i> Data Satuan</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <a href="<?=base_url('admin/form_satuan')?>" style="margin-bottom:35px;" type="button" class="btn btn-primary" name="tambah_data"><i class="fa fa-plus-circle" aria-hidden="true"></i> Tambah Data</a>
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Kode Satuan</th>
                      <th>Nama Satuan</th>
                      <th>Ubah</th>
                      <th>Hapus</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <?php if($list_data){?>
                      <?php $no = 1;?>
                      <?php foreach($list_data as $dd): ?>
                      <td><?=$no?></td>
                      <td><?=$dd['kode_satuan']; ?></td>
                      <td><?=$dd['nama_satuan']; ?></td>
                      <td align="center"><a type="button" class="btn btn-info"  href="<?=base_url('admin/ubah_satuan/'.$dd['id_satuan'])?>" name="btn_update" style="margin:auto;"><i class="fas fa-pencil-alt" aria-hidden="true"></i></a></td>
                      <td align="center"><a type="button" class="btn btn-danger btn-delete"  href="<?=base_url('admin/hapus_satuan/'.$dd['id_satuan'])?>" name="btn_delete" style="margin:auto;"><i class="fas fa-trash-alt" aria-hidden="true" onclick="return confirm('Apakah Anda yakin ingin menghapus data?')"></i></a></td>
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
                      <th>Kode Satuan</th>
                      <th>Nama Satuan</th>
                      <th>Ubah</th>
                      <th>Hapus</th>
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