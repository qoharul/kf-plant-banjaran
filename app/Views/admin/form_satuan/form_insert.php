    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title"><i class="fa fa-archive" aria-hidden="true"></i> Tambah Data Satuan Barang</h3>
              </div>
              <!--card-body -->
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
                <form action="<?=base_url('admin/proses_satuan_insert')?>" role="form" method="post">
                  <div class="card-body">
                    <!-- row 1 -->
                    <div class="row" style="margin-left:30%">
                      <!-- col 1 -->
                      <div class="col-md-2">
                        <div class="form-group">
                          <label for="kode_satuan">Kode Satuan</label>
                          <input type="text" class="form-control" id="kode_satuan" name="kode_satuan" placeholder="Pcs">
                        </div>
                      </div>
                      <!-- /.col 1 -->
                      <!-- col 2 -->
                      <div class="col-md-3">
                        <div class="form-group">
                          <label for="nama_satuan">Nama Satuan</label>
                          <input type="text" class="form-control" id="nama_satuan" name="nama_satuan" placeholder="Pieces">
                        </div>
                      </div>
                      <!-- /.col 2 -->
                      <!-- col 3 -->
                      <div class="col">
                        <div class="form-group">
                          <label for="btn_reset">‎‎‏‏‎ ‎</label><br>
                          <button type="reset" class="btn btn-light" name="btn_reset"><i class="fa fa-eraser" aria-hidden="true"></i> Reset</button>
                        </div>
                      </div>
                      <!-- /.col 3 -->
                    </div>
                    <!-- /.row 1 -->
                  </div>
                  <!-- /.card-body -->
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
                      <a type="button" class="btn btn-info" style="width:75%" href="<?=base_url('admin/tabel_satuanbarang')?>" name="btn_listsatuan"><i class="fa fa-table" aria-hidden="true"></i> Lihat List Satuan</a>
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