    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title"><i class="fa fa-archive" aria-hidden="true"></i> Tambah Data Mobil Masuk</h3>
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
                <form action="<?=base_url('admin/proses_datamobil_masuk_insert')?>" role="form" method="post">
                <div class="card-body">
                  <!-- row 1 -->
                  <div class="row">
                    <!-- col 1 -->
                    <div class="col-md-auto">
                      <div class="form-group">
                        <label for="merk_mobil">Merk</label>
                        <input type="text" class="form-control" id="merk_mobil" name="merk_mobil" placeholder="Toyota Avanza 1.5 Veloz A/T">
                      </div>
                    </div>
                    <!-- /.col 1 -->
                    <!-- col 2 -->
                    <div class="col-md-1">
                      <div class="form-group">
                        <label for="tipe_mobil">Tipe</label>
                        <input type="text" class="form-control" id="tipe_mobil" name="tipe_mobil" placeholder="Bus">
                      </div>
                    </div>
                    <!-- /.col 2 -->
                    <!-- col 3 -->
                    <div class="col-sm-2">
                      <div class="form-group">
                        <label for="plat_mobil">Nomor Polisi</label>
                        <input type="text" class="form-control" id="plat_mobil" name="plat_mobil" placeholder="KT 1079 WMZ">
                      </div>
                    </div>
                    <!-- /.col 3 -->
                    <!-- col 4 -->
                    <div class="col-md-1">
                      <div class="form-group">
                        <label for="tahun_mobil">Tahun</label>
                        <input type="text" class="form-control" id="tahun_mobil" name="tahun_mobil" placeholder="2016">
                      </div>
                    </div>
                    <!-- /.col 4 -->
                    <!-- col 5 -->
                    <!-- <div class="col-1">
                      <div class="form-group">
                        <label for="jumlah">Jumlah</label>
                        <input type="number" class="form-control" id="jumlah" name="jumlah" placeholder="1" min="1" max="1" value="1">
                      </div>
                    </div> -->
                    <!-- /.col 5 -->
                    <!-- col 6 -->
                    <div class="col-sm-3">
                      <div class="form-group">
                        <label for="diperuntukkan">Warna</label>
                        <input type="text" class="form-control" id="diperuntukkan" name="diperuntukkan" placeholder="Hitam Met">
                      </div>
                    </div>
                    <!-- /.col 6 -->
                    <!-- col 7 -->
                    <div class="col">
                      <div class="form-group">
                        <label for="btn_reset">‎‎‏‏‎ ‎</label><br>
                        <button type="reset" class="btn btn-light" name="btn_reset"><i class="fas fa-eraser" aria-hidden="true"></i> Reset</button>
                      </div>
                    </div>
                    <!-- /.col 7 -->
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
                      <a type="button" class="btn btn-info" style="width:75%" href="<?=base_url('admin/tabel_mobilmasuk')?>" name="btn_listmobil"><i class="fa fa-table" aria-hidden="true"></i> Lihat List Mobil</a>
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