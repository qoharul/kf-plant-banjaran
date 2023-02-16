
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
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>ID Mobil</th>
                      <th>Merk</th>
                      <th>Tipe</th>
                      <th>Nomor Polisi</th>
                      <th>Tahun</th>
                      <th>Warna</th>
                      <th>Status</th>
                      <th>Pinjam Mobil</th>
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
                      </td>
                      <td align="center">
                        <?php if($dd['jumlah'] <= 0){ ?>
                          <a>-</a>
                        <?php }
                        else{ ?>
                          <a type="button" class="btn btn-success btn-mobilkeluar"  href="<?=base_url('pegawai/pinjam_mobil/'.$dd['id_mobil'])?>" name="btn_mobilkeluar" style="margin:auto;"><i class="fas fa-car-alt" aria-hidden="true"></i></a>
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
                      <th>Warna</th>
                      <th>Status</th>
                      <th>Pinjam Mobil</th>
                    </tr>
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title"><i class="fa fa-table" aria-hidden="true"></i> Mobil Yang Sedang Dipinjam</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example2" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>ID Transaksi</th>
                      <th>ID Mobil</th>
                      <th>Merk</th>
                      <th>Tipe</th>
                      <th>Nomor Polisi</th>
                      <th>Tahun</th>
                      <th>Dipinjam Oleh</th>
                      <th>NIP</th>
                      <th>Warna</th>
                      <th>Dari Tanggal</th>
                      <th>Sampai Tanggal</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <?php foreach($list_data_dipinjam->getResult() as $key=>$row)
                      {?>
                        <td><?= ($key+1);?></td>
                        <td><?= $row->id;?></td>
                        <td><?= $row->id_mobil;?></td>
                        <td><?= $row->merk_mobil;?></td>
                        <td><?= $row->tipe_mobil;?></td>
                        <td><?= $row->plat_mobil;?></td>
                        <td><?= $row->tahun_mobil;?></td>
                        <td><?= $row->nama_peminjam;?></td>
                        <td><?= $row->nip_peminjam;?></td>
                        <td><?= $row->tujuan_meminjam;?></td>
                        <td><?= $row->tanggal_berangkat;?></td>
                        <td><?= $row->tanggal_kembali;?></td>
                    </tr>
                  <?php }?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <th>No</th>
                      <th>ID Transaksi</th>
                      <th>ID Mobil</th>
                      <th>Merk</th>
                      <th>Tipe</th>
                      <th>Nomor Polisi</th>
                      <th>Tahun</th>
                      <th>Dipinjam Oleh</th>
                      <th>NIP</th>
                      <th>Warna</th>
                      <th>Dari Tanggal</th>
                      <th>Sampai Tanggal</th>
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