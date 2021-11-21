<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title"><i class="fa fa-table" aria-hidden="true"></i> Data Pengajuan Permintaan Barang</h3>
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
                  <th>Status Permintaan</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <?php foreach($list_barang->getResult() as $key=>$row)
                  {?>
                    <td><?= ($key+1);?></td>
                    <td><?= $row->id;?></td>
                    <td><?= $row->tanggal_masuk;?></td>
                    <td><?= $row->tanggal_keluar;?></td>
                    <td><?= $row->bagian;?></td>
                    <td><?= $row->kode_barang;?></td>
                    <td><?= $row->nama_barang;?></td>
                    <td><?= $row->satuan;?></td>
                    <td><?= $row->jumlah;?></td>           
                    <td style="text-align:center;">
                      <?php if($row->status == "Disetujui"){
                        echo "Disetujui";
                      }else{ ?>
                        <div class="row">
                            <a type="button" class="btn btn-success" href="<?= base_url('admin/permintaan_barang/'.$row->id) ?>" name="btn_danger"><i class="fas fa-check-circle"></i></a>
                            <a type="button" class="btn btn-danger" href="<?=base_url('admin/batal_sewa/'.$row->id) ?>" name="btn_danger"><i class="fas fa-times-circle" aria-hidden="true"></i></a>
                        </div>
                      <?php } ?>
                    </td>
                </tr>
                  <?php }?>
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
                  <th>Status Permintaan</th>
                </tr>
              </tfoot>
            </table>
          </div>
          <!-- /.card-body -->
          <!-- <div class="card-header">
            <h3 class="card-title"><i class="fa fa-table" aria-hidden="true"></i> Data Pengajuan Permintaan Barang</h3>
          </div>
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
                    <th>Status Permintaan</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <?php foreach($list_barang->getResult() as $key=>$row)
                    {?>
                      <td><?= ($key+1);?></td>
                      <td><?= $row->id;?></td>
                      <td><?= $row->tanggal_masuk;?></td>
                      <td><?= $row->tanggal_keluar;?></td>
                      <td><?= $row->bagian;?></td>
                      <td><?= $row->kode_barang;?></td>
                      <td><?= $row->nama_barang;?></td>
                      <td><?= $row->satuan;?></td>
                      <td><?= $row->jumlah;?></td>           
                      <td style="text-align:center;">
                        <?php if($row->status == "Disetujui"){
                          echo "Disetujui";
                        }else{ ?>
                          <div class="row">
                              <a type="button" class="btn btn-success" href="<?= base_url('admin/permintaan_barang/'.$row->id) ?>" name="btn_danger"><i class="fas fa-check-circle"></i></a>
                              <a type="button" class="btn btn-danger" href="<?=base_url('admin/batal_sewa/'.$row->id) ?>" name="btn_danger"><i class="fas fa-times-circle" aria-hidden="true"></i></a>
                          </div>
                        <?php } ?>
                      </td>
                  </tr>
                    <?php }?>
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
                    <th>Status Permintaan</th>
                  </tr>
                </tfoot>
              </table>
          </div> -->
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