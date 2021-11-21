<?php if ($list_data['jumlah']<1){
    throw new \CodeIgniter\Exceptions\PageNotFoundException('Data Mobil Tidak ditemukan!');
}
?>
<!-- Main content -->
<section class="content">
  <div class="container-fluid">
        <!-- general form elements -->
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title"><i class="fa fa-archive" aria-hidden="true"></i> Formulir Peminjaman Kendaraan Dinas</h3>
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
          <form method="post" action="<?= base_url('admin/proses_peminjaman_mobil/' . $list_data['id_mobil']) ?>">
          <input type="hidden" class="form-control" id="id_mobil" name="id_mobil" value="<?= $list_data['id_mobil']; ?>" readonly>
          <?= csrf_field(); ?>
            <div class="card-body">
              <!-- row 1 -->
              <div class="row">
                <!-- col -->
                <div class="col">
                  <h5> Yang bertandatangan dibawah ini: </h5>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row 1 -->
              <!-- row 2 -->
              <div class="row">
                <!-- col -->
                <div class="col">
                </div>
                <!-- /.col -->
                <div class="col">
                  <div class="form-group">
                    <label for="nip">NIP</label>
                    <!-- <input type="text" class="form-control" id="nip" name="nip" placeholder="Masukkan NIP"> -->
                    <select id="nip" onkeyup="isi_otomatis()" name="nip" placeholder="Pilih NIP...">
                      <option value=""></option>
                      <?php foreach($list_pegawai as $lp){?>
                        <option value="<?=$lp['nip']?>"><?=$lp['nip']?></option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <!-- col -->
                <div class="col">
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row 2 -->
              <!-- row 3 -->
              <div class="row">
                <!-- col 2.1 -->
                <div class="col">
                </div>
                <!-- /.col 2.1 -->
                <!-- col 2.2 -->
                <div class="col-lg-3">
                  <!-- row 2.2.1 -->
                  <div class="row">
                    <div class="form-group">
                      <label for="nama">Nama</label>
                      <input type="text" class="form-control" id="nama" name="nama" placeholder="Masukkan Nama">
                    </div>
                  </div>
                  <!-- /.row 2.2.1 -->
                  <!-- row 2.2.2 -->
                  <div class="row">
                    <!-- select -->
                    <!-- <div class="form-group">
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
                    </div> -->
                    <div class="form-group">
                      <label for="bagian">Bagian</label>
                      <input type="text" class="form-control" id="bagian" name="bagian" placeholder="Masukkan Bagian">
                    </div>
                  </div>
                  <!-- /.row 2.2.2 -->
                  <!-- row 2.2.3 -->
                  <div class="row">
                    <div class="form-group">
                      <label for="pangkat">Pangkat/Golongan</label>
                      <input type="text" class="form-control" id="pangkat" name="pangkat" placeholder="Masukkan Pangkat/Golongan">
                    </div>
                  </div>
                  <!-- /.row 2.2.3 -->
                </div>
                <!-- /.col 2 -->
                <!-- col 3 -->
                <div class="col-lg-3">
                  <!-- row 3.1 -->
                  <div class="row">
                    <div class="form-group">
                      <label for="jabatan">Jabatan</label>
                      <input type="text" class="form-control" id="jabatan" name="jabatan" placeholder="Masukkan Jabatan">
                    </div>
                  </div>
                  <!-- /.row 3.1 -->
                  <!-- row 3.2 -->
                  <div class="row">
                    <div class="form-group">
                      <label for="alamat">Alamat</label>
                      <input type="text" class="form-control" id="alamat" name="alamat" placeholder="Masukkan Alamat">
                    </div>
                  </div>
                  <!-- /.row 3.2 -->
                  <!-- row 3.3 -->
                  <div class="row">
                    <div class="form-group">
                      <label for="telepon">Nomor Telepon</label>
                      <input type="text" class="form-control" id="telepon" name="telepon" placeholder="Masukkan Nomor Telepon">
                    </div>
                  </div>
                  <!-- /.row 3.3 -->
                </div>
                <!-- /.col 3 -->
                <!-- col 4 -->
                <div class="col">
                </div>
                <!-- /.col 4 -->
              </div>
              <!-- /.row 3 -->
              <!-- row 4 -->
              <div class="row">
                <!-- col -->
                <div class="col">
                <br>
                  <h4> <b>Bermaksud untuk menggunakan kendaraan dinas dengan penuh tanggung jawab </b></h4>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row 4 -->
              <!-- row 5 -->
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
                      <label>Tanggal Berangkat</label>
                      <div class="input-group date" id="tanggal_berangkat" data-target-input="nearest">
                        <input type="text" class="form-control datetimepicker-input" name="tanggal_berangkat" value="<?php echo date("d-m-Y"); ?>" data-target="#tanggal_berangkat" readonly/>
                        <div class="input-group-append" data-target="#tanggal_berangkat" data-toggle="datetimepicker">
                          <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- /.row 2.1 -->
                  <!-- row 2.2 -->
                  <div class="row">
                    <div class="form-group">
                      <label>Tanggal Kembali</label>
                      <div class="input-group date" id="tanggal_kembali" data-target-input="nearest">
                        <input type="text" class="form-control datetimepicker-input" name="tanggal_kembali" value="<?php echo date("d-m-Y", strtotime("+1 day")); ?>" data-target="#tanggal_kembali"/>
                        <div class="input-group-append" data-target="#tanggal_kembali" data-toggle="datetimepicker">
                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- /.row 2.2 -->
                </div>
                <!-- /.col 2 -->
                <!-- col 3 -->
                <div class="col">
                  
                </div>
                <!-- /.col 3 -->
              </div>
              <!-- /.row 5 -->
              <!-- row 6 -->
              <div class="row">
                <!-- col 1 -->
                <div class="col-md-auto">
                  <div class="form-group">
                    <label for="merk_mobil">Merk</label>
                    <input type="text" class="form-control" id="merk_mobil" name="merk_mobil" placeholder="Toyota Avanza 1.5 Veloz A/T" value="<?= $list_data['merk_mobil']; ?>" readonly>
                  </div>
                </div>
                <!-- /.col 1 -->
                <!-- col 2 -->
                <div class="col-md-1">
                  <div class="form-group">
                    <label for="tipe_mobil">Tipe</label>
                    <input type="text" class="form-control" id="tipe_mobil" name="tipe_mobil" placeholder="Bus" value="<?= $list_data['tipe_mobil']; ?>" readonly>
                  </div>
                </div>
                <!-- /.col 2 -->
                <!-- col 3 -->
                <div class="col-sm-2">
                  <div class="form-group">
                    <label for="plat_mobil">Nomor Polisi</label>
                    <input type="text" class="form-control" id="plat_mobil" name="plat_mobil" placeholder="KT 1079 WMZ" value="<?= $list_data['plat_mobil']; ?>" readonly>
                  </div>
                </div>
                <!-- /.col 3 -->
                <!-- col 4 -->
                <div class="col-md-1">
                  <div class="form-group">
                    <label for="tahun_mobil">Tahun</label>
                    <input type="text" class="form-control" id="tahun_mobil" name="tahun_mobil" placeholder="2016" value="<?= $list_data['tahun_mobil']; ?>" readonly>
                  </div>
                </div>
                <!-- /.col 4 -->
                <!-- col 5 -->
                <div class="col-sm-4">
                  <div class="form-group">
                    <label for="tujuan">Tujuan</label>
                    <input type="text" class="form-control" id="tujuan" name="tujuan" placeholder="Dinas Luar Kota">
                  </div>
                </div>
                <!-- /.col 5 -->
                <!-- col 6 -->
                <div class="col">
                  <div class="form-group">
                    <label for="btn_reset">‎‎‏‏‎ ‎</label><br>
                    <button type="reset" class="btn btn-light" name="btn_reset"><i class="fas fa-eraser" aria-hidden="true"></i> Reset</button>
                  </div>
                </div>
                <!-- /.col 6 -->
              </div>
              <!-- /.row 6 -->
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