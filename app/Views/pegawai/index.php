  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-info">
            <div class="inner">           
              <?php if(!empty($stokMobilMasuk)){ ?>
                <?php foreach($stokMobilMasuk->getResult() as $d){ ?>
                <h3><?=$d->jumlah;?></h3>
                <?php } ?>
              <?php }else{ ?>
                <h3>0</h3>
              <?php } ?>
              <p>Mobil Kosong</p>
            </div>
            <div class="icon">
              <i class="ion ion-model-s"></i>
            </div>
            <a href="<?=base_url('pegawai/tabel_mobilmasuk')?>" class="small-box-footer">Info Lebih Lanjut <i class="fas fa-arrow-circle-right"></i></a>
          </div>
      </div>
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-success">
            <div class="inner">           
              <?php if(!empty($stokMobilKeluarByNip)){ ?>
                <?php foreach($stokMobilKeluarByNip->getResult() as $d){ ?>
                <h3><?=$d->nip_peminjam;?></h3>
                <?php } ?>
              <?php }else{ ?>
                <h3>0</h3>
              <?php } ?>
              <p>Meminjam Mobil</p>
            </div>
            <div class="icon">
              <i class="fas fa-exchange-alt"></i>
            </div>
            <a href="<?=base_url('pegawai/riwayat_mobil')?>" class="small-box-footer">Info Lebih Lanjut <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        
      <!-- /.row -->
      <!-- row -->
      <div class="row">
        <div class="col">
          
  </section>