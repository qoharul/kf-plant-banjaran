<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <!-- general form elements -->
    <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title"><i class="fa fa-archive" aria-hidden="true"></i> Keluarkan Data Barang Masuk</h3>
      </div>
      <!-- card-body -->
      <div class="card-body">
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
        <form method="post" action="<?= base_url('admin/proses_perpindahan_barang/'.$list_data['id_transaksi']) ?>">                
          <input type="hidden" class="form-control" id="id_transaksi" name="id_transaksi" value="<?= $list_data['id_transaksi']; ?>" readonly>
          <?= csrf_field(); ?>
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
                  <label>Tanggal Masuk</label>
                  <div class="input-group date" id="tanggal_masuk">
                    <input type="text" class="form-control datetimepicker-input" name="tanggal_masuk" value="<?= $list_data['tanggal']; ?>" data-target="#tanggal_masuk" readonly/>
                    <div class="input-group-append" data-toggle="datetimepicker">
                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.row 2.1 -->
              <!-- row 2.2 -->
              <div class="row">
                <div class="form-group">
                  <label>Tanggal Keluar</label>
                  <div class="input-group date" id="tanggal_keluar" data-target-input="nearest">
                    <input type="text" class="form-control datetimepicker-input" name="tanggal_keluar" value="<?php echo date("d-m-Y"); ?>" data-target="#tanggal_keluar"/>
                    <div class="input-group-append" data-target="#tanggal_keluar" data-toggle="datetimepicker">
                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.row 2.2 -->
              <!-- row 2.3 -->
              <div class="row">
                <div class="form-group">
                  <!-- select -->
                  <div class="form-group">
                    <label for="bagian">Bagian</label>
                    <select class="custom-select" name="bagian">
                      <option value="">----- Pilih -----</option>
                      <option value="TU Pimpinan">TU Pimpinan</option>
                      <option value="Sekretariat (Kepegawaian)">Sekretariat (Kepegawaian)</option>
                      <option value="Sekretariat (Perencanaan)">Sekretariat (Perencanaan)</option>
                      <option value="Sekretariat (Keuangan)">Sekretariat (Keuangan)</option>
                      <option value="Sekretariat (Arsip)">Sekretariat (Arsip)</option>
                      <option value="Bidang (Kesbak)">Bidang (Kesbak)</option>
                      <option value="Bidang (Poldagri)">Bidang (Poldagri)</option>
                      <option value="Bidang (Wasda)">Bidang (Wasda)</option>
                      <option value="Bidang (Idwasbang)">Bidang (Idwasbang)</option>
                    </select>
                  </div>
                </div>
              </div>
              <!-- /.row 2.3 -->
            </div>
            <!-- /.col 2 -->
            <!-- col 3 -->
            <div class="col">
            </div>
            <!-- /.col 3 -->
          </div>
          <!-- /.row 1 -->
          <!-- row 2 -->
          <div class="row" style="margin-left:8%">
            <!-- col 1 -->
            <div class="col">
              <div class="form-group">
                <label for="kode_barang">Kode</label>
                <input type="text" class="form-control" id="kode_barang" name="kode_barang" placeholder="036000291452" value="<?= $list_data['kode_barang']; ?>" readonly>
              </div>
            </div>
            <!-- /.col 1 -->
            <!-- col 2 -->
            <div class="col-md-auto">
              <div class="form-group">
                <label for="nama_barang">Nama</label>
                <input type="text" class="form-control" id="nama_barang" name="nama_barang" placeholder="Kertas A4" value="<?= $list_data['nama_barang']; ?>" readonly>
              </div>
            </div>
            <!-- /.col 2 -->
            <!-- col 3 -->
            <div class="col">
              <!-- select -->
              <div class="form-group">
                <label for="satuan">Satuan</label>
                <select class="custom-select" name="satuan" readonly>
                  <?php foreach($list_satuan as $s){?>
                    <?php if($list_data['satuan'] == $s['nama_satuan']){?>
                  <option value="<?=$list_data['satuan']?>" selected="" ><?=$list_data['satuan']?> </option>
                  <?php }else{?>
                  <option value="<?=$s['kode_satuan']?>"><?=$s['nama_satuan']?></option>
                    <?php } ?>
                    <?php } ?>
                </select>
              </div>
            </div>
            <!-- /.col 3 -->
            <!-- col 4 -->
            <div class="col-2">
              <div class="form-group">
                <label for="jumlah">Jumlah</label>
                <input type="number" class="form-control" id="jumlah" name="jumlah" placeholder="0" min="1" max="<?=$list_data['jumlah'];?>" value="<?= $list_data['jumlah']; ?>">
              </div>
            </div>
            <!-- /.col 4 -->
            <!-- col 5 -->
            <div class="col">
              <div class="form-group">
                <label for="emptyLabel">‎‎‏‏‎ ‎</label><br>
                <button type="reset" class="btn btn-light" name="btn_reset"><i class="fa fa-eraser" aria-hidden="true"></i> Reset</button>
              </div>
            </div>
            <!-- /.col 5 -->
          </div>
          <!-- /.row 2 -->
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
                <a type="button" class="btn btn-info" style="width:75%" href="<?=base_url('admin/tabel_barangmasuk')?>" name="btn_listbarang"><i class="fa fa-table" aria-hidden="true"></i> Lihat List Barang</a>
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