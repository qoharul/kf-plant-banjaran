<!-- Main content -->
<section class="content">
  <div class="container-fluid">
        <!-- general form elements -->
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title"><i class="fa fa-archive" aria-hidden="true"></i> Terima Mobil</h3>
          </div>
          <?php if (!empty(session()->getFlashdata('error'))) : ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
              <h4>Gagal Mengubah Data!</h4>
              </hr/>
              <?php echo session()->getFlashdata('error'); ?>
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <?php endif; ?>
          <!-- form start -->
          <form method="post" action="<?= base_url('pegawai/proses_terima_mobil/' . $list_data['id']) ?>">
          <input type="hidden" class="form-control" id="id" name="id" value="<?= $list_data['id']; ?>" readonly>
          <input type="hidden" class="form-control" id="jumlah" name="jumlah" value="<?= $list_data['jumlah']; ?>" readonly>
          <?= csrf_field(); ?>
            <div class="card-body">
              <!-- row 1 -->
              <div class="row">
                <!-- col 1 -->
                <div class="col">
                </div>
                <!-- /.col 1 -->
                <!-- col 2 -->
                <div class="col-lg-3">
                  <!-- row 2.1 -->
                  <div class="row">
                    <div class="form-group">
                      <label for="status_diterima">Apakah mobil sudah diterima?</label>
                      <select class="custom-select" name="status_diterima">
                        <option value="Belum Diterima" selected="">Belum Diterima</option>
                        <option value="Diterima">Sudah Diterima</option>
                      </select>
                  </div>
                </div>
                  <!-- /.row 2.1 -->
                </div>
                <!-- /.col 2 -->
                <!-- col 3 -->
                <div class="col">
                  
                </div>
                <!-- /.col 3 -->
              </div>
              <!-- /.row 1 -->
            </div>
            <!-- /.card-body -->

            <div class="card-footer">
              <div align="center" class="row">
                <!-- col 1 -->
                <div class="col">
                  <a type="button" class="btn btn-secondary" style="width:75%" onclick="history.back(-1)" name="btn_kembali"><i class="fa fa-arrow-left" aria-hidden="true"></i> Kembali</a>
                </div>
                <!-- /.col 1 -->
                <!-- col 1 -->
                <div class="col">
                  <a type="button" class="btn btn-info" style="width:75%" href="<?=base_url('pegawai/riwayat_mobil')?>" name="btn_listmobil"><i class="fa fa-table" aria-hidden="true"></i> Lihat Riwayat Mobil</a>
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
    <!-- /.row -->
  </div><!-- /.container-fluid -->
</section>
<!-- /.content -->