  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <!-- ./col -->
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
            <a href="<?=base_url('admin/tabel_mobilmasuk')?>" class="small-box-footer">Info Lebih Lanjut <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-success">
            <div class="inner">           
              <?php if(!empty($stokMobilKeluar)){ ?>
                <?php foreach($stokMobilKeluar->getResult() as $d){ ?>
                <h3><?=$d->id;?></h3>
                <?php } ?>
              <?php }else{ ?>
                <h3>0</h3>
              <?php } ?>
              <p>Mobil Dipinjam</p>
            </div>
            <div class="icon">
              <i class="fas fa-exchange-alt"></i>
            </div>
            <a href="<?=base_url('admin/tabel_mobilkeluar')?>" class="small-box-footer">Info Lebih Lanjut <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
      </div>
      <!-- /.row -->
      <!-- row -->
      <div class="row">
        <div class="col">
          
  </section>