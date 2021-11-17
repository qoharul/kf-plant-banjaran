<!-- Main content -->
<section class="content">
<div class="container-fluid">
  <!-- general form elements -->
  <div class="card card-primary">
    <div class="card-header">
      <h3 class="card-title"><i class="fa fa-archive" aria-hidden="true"></i> Ubah Akun</h3>
    </div>
    <!-- card-body -->
    <div class="card-body">
      <?php if (!empty(session()->getFlashdata('error'))) : ?>
      <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <h4>Gagal Menambahkan Data!</h4>
        </hr/>
        <?php echo session()->getFlashdata('error'); ?>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <?php endif; ?>
      <!-- form start -->
      <form action="<?=base_url('admin/proses_ubah_akun/'. $list_data['id']) ?>" role="form" method="post">

        <?= csrf_field(); ?>
        <!-- row 1 -->
        <div class="row">
          <!-- col 1.1 -->
          <div class="col">
          </div>
          <!-- /.col 1.1 -->
          <!-- col 1.2 -->
          <div class="col">                
            <div class="form-group">
              <label for="username">Username</label>
              <input type="text" class="form-control" id="username" name="username" placeholder="Masukkan Username" value="<?= $list_data['username']; ?>">
            </div>
          </div>
          <!-- /.col 1.2 -->
          <!-- col 1.3 -->
          <div class="col">
          </div>
          <!-- /.col 1.3 -->
        </div>
        <!-- /.row 1 -->
        <!-- row 2 -->
        <div class="row">
          <!-- col 2.1 -->
          <div class="col">
          </div>
          <!-- /.col 2.1 -->
          <!-- col 2.2 -->
          <div class="col">
            <!-- <div class="form-group">
              <label for="password">Password</label>
              <input type="password" class="form-control" id="password" name="password" placeholder="Masukkan Password" value="<?= $list_data['password']; ?>"> 
            </div> -->
          </div>
          <!-- /.col 2.2 -->
          <!-- col 2.3 -->
          <div class="col">
          </div>
          <!-- /.col 2.3 -->
        </div>
        <!-- /.row 2 -->
        <!-- row 3 -->
        <div class="row">
          <!-- col 3.1 -->
          <div class="col">
          </div>
          <!-- /.col 3.1 -->
          <!-- col 3.2 -->
          <div class="col">
            <!-- <div class="form-group">
              <label for="password2">Ulangi Password</label>
              <input type="password" class="form-control" id="password2" name="password2" placeholder="Ulangi Password">
            </div> -->
          </div>
          <!-- /.col 3.2 -->
          <!-- col 3.3 -->
          <div class="col">
          </div>
          <!-- /.col 3.3 -->
        </div>
        <!-- /.row 3 -->
        <!-- row 4 -->
        <div class="row">
          <!-- col 4.1 -->
          <div class="col">
          </div>
          <!-- /.col 4.1 -->
          <!-- col 4.2 -->
          <div class="col">
            <div class="form-group">
              <!-- select -->
              <div class="form-group">
                <label for="role">Role</label>
                <select class="custom-select" name="role">
                  <?php if($list_data['role'] == 1){?>
                    <option value="1" selected="">Pengelola Gudang</option>
                    <option value="0">Pegawai</option>
                    <?php }else{?>
                    <option value="1">Pengelola Gudang</option>
                    <option value="0" selected="">Pegawai</option>
                      <?php } ?>
                </select>
              </div>
            </div>
          </div>
          <!-- /.col 4.2 -->
          <!-- col 4.3 -->
          <div class="col">
          </div>
          <!-- /.col 4.3 -->
        </div>
        <!-- /.row 4 -->
    </div>
        <div class="card-footer">
          <div align="center" class="row">
            <!-- col 1 -->
            <div class="col">
              <a type="button" class="btn btn-secondary" style="width:75%" onclick="history.back(-1)" name="btn_kembali"><i class="fa fa-arrow-left" aria-hidden="true"></i> Kembali</a>
            </div>
            <!-- /.col 1 -->
            <!-- col 1 -->
            <div class="col">
              <a type="button" class="btn btn-info" style="width:75%" href="<?=base_url('admin/akun')?>" name="btn_list"><i class="fa fa-table" aria-hidden="true"></i> Lihat List Akun</a>
            </div>
            <!-- /.col 1 -->
            <!-- col 1 -->
            <div class="col">
              <button type="submit" class="btn btn-primary" style="width:75%" >Submit</button>
            </div>
            <!-- /.col 1 -->
          </div>
        </div>
      </form>
  </div>
  <!-- /.card -->
</div>
<!-- /.container-fluid -->
</section>
<!-- /.content -->