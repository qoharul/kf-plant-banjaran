<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title"><i class="fa fa-table" aria-hidden="true"></i> Data Peminjam Mobil</h3>
          </div>
          <!-- /.card-header -->
          <!-- /card-body -->
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Status Pengembalian</th>
                  <th>ID</th>
                  <th>Tanggal Berangkat</th>
                  <th>Rencana Tanggal Kembali</th>
                  <th>Nama</th>
                  <th>NIP</th>
                  <th>Bagian</th>
                  <th>Pangkat</th>
                  <th>Jabatan</th>
                  <th>Alamat</th>
                  <th>Telepon</th>
                  <th>Tujuan</th>
                  <th>No Polisi</th>
                  <th>Merk</th>
                  <th>Tahun Mobil</th>
                  <th>Status Pengajuan</th>
                  <th>Status Penerimaan</th>
                  <th>Status Pinjaman</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <?php foreach($list_data->getResult() as $key=>$row)
                  {?>
                    <td><?= ($key+1);?></td>
                    <td style="text-align:center;">
                      <?php if($row->status_diterima == "Belum Diterima"){
                        echo "Menunggu Penerimaan Mobil";
                      }elseif($row->status_pinjaman == "Selesai"){
                        echo "Dikembalikan pada tanggal <b>$row->tanggal_dikembalikan</b>";
                      }elseif($row->status_diterima == "Diterima"){
                        ?>
                        <div class="row">
                            <a type="button" class="btn btn-primary" href="<?= base_url('admin/pengembalian_mobil/'.$row->id) ?>" name="btn_danger"><i class="fas fa-undo"></i>Kembalikan Mobil</a>
                            <a type="button" class="btn btn-danger" href="<?=base_url('admin/batal_sewa/'.$row->id) ?>" name="btn_danger"><i class="fas fa-trash-alt" aria-hidden="true"></i>Batalkan Sewa</a>
                        </div>
                      <?php
                      }else{ 
                        echo "-";
                      } ?>
                    </td>
                    <td><?= $row->id;?></td>
                    <td><?= $row->tanggal_berangkat;?></td>
                    <td><?= $row->tanggal_kembali;?></td>
                    <td><?= $row->nama_peminjam;?></td>
                    <td><?= $row->nip_peminjam;?></td>
                    <td><?= $row->bagian;?></td>
                    <td><?= $row->pangkat_peminjam;?></td>
                    <td><?= $row->jabatan_peminjam;?></td>
                    <td><?= $row->alamat_peminjam;?></td>
                    <td><?= $row->telp_peminjam;?></td>
                    <td><?= $row->tujuan_meminjam;?></td>
                    <td><?= $row->plat_mobil;?></td>
                    <td><?= $row->merk_mobil;?></td>
                    <td><?= $row->tahun_mobil;?></td>   
                    <td style="text-align:center;">
                      <?php if($row->status_pengajuan == "Disetujui"){
                        echo "Disetujui";
                      }else{ ?>
                        <div class="row">
                            <a type="button" class="btn btn-success" href="<?= base_url('admin/permintaan_mobil/'.$row->id) ?>" name="btn_danger"><i class="fas fa-check-circle"></i></a>
                            <a type="button" class="btn btn-danger" href="<?=base_url('admin/batal_sewa/'.$row->id) ?>" name="btn_danger"><i class="fas fa-times-circle" aria-hidden="true"></i></a>
                        </div>
                      <?php } ?>
                    </td>

                    <td style="text-align:center;">
                      <?php if($row->status_diterima == "Diterima"){
                        echo "Telah Diterima";
                      }else{ 
                        echo "Belum Diterima";
                      } ?>
                    </td>

                    <td>
                      <?php if($row->tanggal_dikembalikan == "-"){
                        echo "Belum Selesai";
                      }else{
                        echo "Selesai";
                      }?>
                    </td>
                </tr>
                  <?php }?>
              </tbody>
              <tfoot>
                <tr>
                  <th>No</th>
                  <th>ID</th>
                  <th>Tanggal Berangkat</th>
                  <th>Rencana Tanggal Kembali</th>
                  <th>Nama</th>
                  <th>NIP</th>
                  <th>Bagian</th>
                  <th>Pangkat</th>
                  <th>Jabatan</th>
                  <th>Alamat</th>
                  <th>Telepon</th>
                  <th>Tujuan</th>
                  <th>No Polisi</th>
                  <th>Merk</th>
                  <th>Tahun Mobil</th>
                  <th>Status Pengajuan</th>
                  <th>Status Penerimaan</th>
                  <th>Status Pinjaman</th>
                  <th>Status Pengembalian</th>
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