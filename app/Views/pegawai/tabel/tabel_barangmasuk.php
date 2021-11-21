    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title"><i class="fa fa-table" aria-hidden="true"></i> Stok Barang</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>ID_Transaksi</th>
                      <th>Tanggal</th>
                      <th>Kode</th>
                      <th>Nama</th>
                      <th>Satuan</th>
                      <th>Jumlah</th>
                      <th>Minta Barang</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <?php if($list_data){?>
                      <?php $no = 1;?>
                      <?php foreach($list_data as $dd): ?>
                      <td><?=$no?></td>
                      <td><?=$dd['id_transaksi']; ?></td>
                      <td><?=$dd['tanggal']; ?></td>
                      <td><?=$dd['kode_barang']; ?></td>
                      <td><?=$dd['nama_barang']; ?></td>
                      <td><?=$dd['satuan']; ?></td>
                      <td><?=$dd['jumlah']; ?></td>
                      <td align="center"><a type="button" class="btn btn-success btn-barangkeluar"  href="<?=base_url('pegawai/minta_barang/'.$dd['id_transaksi'])?>" name="btn_barangkeluar" style="margin:auto;"><i class="fas fa-sign-out-alt" aria-hidden="true"></i></a></td>
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
                      <th>ID_Transaksi</th>
                      <th>Tanggal</th>
                      <th>Kode</th>
                      <th>Nama</th>
                      <th>Satuan</th>
                      <th>Jumlah</th>
                      <th>Minta Barang</th>
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