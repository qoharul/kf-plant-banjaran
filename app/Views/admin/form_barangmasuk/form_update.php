<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <!-- general form elements -->
    <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title"><i class="fa fa-archive" aria-hidden="true"></i> Ubah Data Barang Masuk</h3>
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
        <form method="post" action="<?= base_url('admin/proses_databarang_masuk_update/' . $list_data['id_transaksi']) ?>">
          <?= csrf_field(); ?>
          <!-- row 1 -->
          <div class="row">
            <!-- col 1 -->
            <div class="col">
            </div>
            <!-- /.col 1 -->
            <!-- col 2 -->
            <div class="col-md-auto">
              <div class="form-group">
                <label>Tanggal</label>
                <div class="input-group date" id="date" data-target-input="nearest">
                  <input type="text" class="form-control datetimepicker-input" name="date" value="<?php echo date("d-m-Y"); ?>" data-target="#date"/>
                  <div class="input-group-append" data-target="#date" data-toggle="datetimepicker">
                      <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                  </div>
                </div>
              </div>
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
                <input type="text" class="form-control" id="kode_barang" name="kode_barang" placeholder="036000291452" value="<?= $list_data['kode_barang']; ?>">
              </div>
            </div>
            <!-- /.col 1 -->
            <!-- col 2 -->
            <div class="col-md-auto">
              <div class="form-group">
                <label for="nama_barang">Nama</label>
                <input type="text" class="form-control" id="nama_barang" name="nama_barang" placeholder="Kertas A4" value="<?= $list_data['nama_barang']; ?>">
              </div>
            </div>
            <!-- /.col 2 -->
            <!-- col 3 -->
            <div class="col">
              <div class="form-group">
                <label for="satuan">Satuan</label>
                <input type="text" class="form-control" id="satuan" name="satuan" placeholder="Rim" value="<?= $list_data['satuan']; ?>">
              </div>
            </div>
            <!-- /.col 3 -->
            <!-- col 4 -->
            <div class="col-2">
              <div class="form-group">
                <label for="jumlah">Jumlah</label>
                <input type="number" class="form-control" id="jumlah" name="jumlah" placeholder="0" value="<?= $list_data['jumlah']; ?>">
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