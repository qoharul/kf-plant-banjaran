<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title"><i class="fa fa-table" aria-hidden="true"></i> Data Barang Keluar</h3>
          </div>
          <!-- /.card-header -->
          <!-- /card-body -->
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>ID Transaksi</th>
                  <th>Tanggal Masuk</th>
                  <th>Tanggal Keluar</th>
                  <th>Bagian</th>
                  <th>Kode Barang</th>
                  <th>Nama Barang</th>
                  <th>Satuan</th>
                  <th>Jumlah</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <?php if(is_array($list_data)){ ?>
                  <?php $no = 1;?>
                  <?php foreach($list_data as $dd): ?>
                    <td><?=$no?></td>
                    <td><?=$dd['id_transaksi']?></td>
                    <td><?=$dd['tanggal_masuk']?></td>
                    <td><?=$dd['tanggal_keluar']?></td>
                    <td><?=$dd['bagian']?></td>
                    <td><?=$dd['kode_barang']?></td>
                    <td><?=$dd['nama_barang']?></td>
                    <td><?=$dd['satuan']?></td>
                    <td><?=$dd['jumlah']?></td>
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
                  <th>ID Transaksi</th>
                  <th>Tanggal Masuk</th>
                  <th>Tanggal Keluar</th>
                  <th>Bagian</th>
                  <th>Kode Barang</th>
                  <th>Nama Barang</th>
                  <th>Satuan</th>
                  <th>Jumlah</th>
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