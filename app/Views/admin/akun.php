<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title"><i class="fas fa-users" aria-hidden="true"></i> Data Akun</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <a href="<?=base_url('admin/tambah_akun')?>" style="margin-bottom:35px;" type="button" class="btn btn-primary" name="tambah_data"><i class="fa fa-plus-circle" aria-hidden="true"></i> Tambah Akun</a>
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>ID Akun</th>
                  <th>Username</th>
                  <th>Role</th>
                  <th>Ubah</th>
                  <th>Hapus</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <?php if($list_akun){?>
                  <?php $no = 1;?>
                  <?php foreach($list_akun as $dd): ?>
                  <td><?=$no?></td>
                  <td><?=$dd['id']; ?></td>
                  <td><?=$dd['username']; ?></td>
                    <?php if($dd['role'] == 1){ ?>
                    <td>Pengelola Gudang</td>
                    <?php }else{?>
                    <td>Pegawai</td>
                    <?php }?>
                  <td align="center"><a type="button" class="btn btn-info"  href="<?=base_url('admin/ubah_akun/'.$dd['id'])?>" name="btn_update" style="margin:auto;"><i class="fas fa-pencil-alt" aria-hidden="true"></i></a></td>
                  <td align="center"><a type="button" class="btn btn-danger"  href="<?=base_url('admin/hapus_akun/'.$dd['id'])?>" name="btn_delete" style="margin:auto;"><i class="fas fa-trash-alt" aria-hidden="true" onclick="return confirm('Apakah Anda yakin ingin menghapus data ?')"></i></a></td>
                </tr>
                <?php $no++; ?>
                <?php endforeach;?>
                <?php }else { ?>
                <td colspan="10" align="center"><strong>Data Kosong</strong></td>
                <?php } ?>
              </tbody>
              <tfoot>
                <tr>
                  <th>No</th>
                  <th>ID Akun</th>
                  <th>Username</th>
                  <th>Role</th>
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