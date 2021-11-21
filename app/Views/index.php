<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/tom-select@2.0.0-rc.4/dist/css/tom-select.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/tom-select@2.0.0-rc.4/dist/js/tom-select.complete.min.js"></script>  
  <link rel="icon" href="<?php echo base_url('public/assets') ?>/upload/icon.png">
  <title>KESBANGPOL | <?php echo $title ?></title>

  <base href="<?php echo base_url('public/assets') ?>/">
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" type="text/css" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css"/>
  <link rel="stylesheet" type="text/css" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" type="text/css" href="plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
</head>
<body class="hold-transition sidebar-mini layout-footer-fixed">
  <?php $session = session()?>
  <!-- 
        <h4>Selamat datang admin!</h4>
        <?php //echo $session->get('username')?>
        <a href="/auth/logout">Logout</a>
      -->
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto"> 
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
          <a class="nav-link" data-toggle="dropdown" href="#">
            <i class="far fa-bell"></i>
            <span class="badge badge-warning navbar-badge">15</span>
          </a>
          <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
            <span class="dropdown-item dropdown-header">15 Notifications</span>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">
              <i class="fas fa-envelope mr-2"></i> 4 new messages
              <span class="float-right text-muted text-sm">3 mins</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">
              <i class="fas fa-users mr-2"></i> 8 friend requests
              <span class="float-right text-muted text-sm">12 hours</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">
              <i class="fas fa-file mr-2"></i> 3 new reports
              <span class="float-right text-muted text-sm">2 days</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
          </div>
      </li>
      <!-- Full Screen -->
      <!-- <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="<?php echo base_url('') ?>/#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li> -->
      <!-- Control Sidebar -->
      <!-- <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-controlsidebar-slide="true" href="<?php echo base_url('') ?>/#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li> -->
      <!-- User Dropdown Menu -->         
      <li class="dropdown user user-menu">
        <a href="#" class="nav-link" data-toggle="dropdown">
          <img src="dist/img/dummy-profile-pic.png" class="user-image" alt="User Image">
          <span class="hidden-xs">Halo, <u><?php echo $session->get('username'); ?></u></span>
        </a>
        <ul class="dropdown-menu">
          <!-- User image -->
          <li class="user-header">
            <img src="dist/img/dummy-profile-pic.png" class="img-circle" alt="User Image">
            <p>
              Login sebagai : <?php echo $session->get('username');  ?>
            </p>
          </li>              
          <!-- Menu Footer-->
          <li class="user-footer">
            <div class="pull-right">
              <a href="<?php echo base_url('') ?>/auth/logout" class="btn bg-red">Logout <i class="fa fa-sign-out"></i></a>
            </div>
          </li>
        </ul>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="<?php echo base_url('') ?>/" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">ATKMobil</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/dummy-profile-pic.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="<?php echo base_url('') ?>/" class="d-block"><?php echo $session->get('username')?></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="<?php echo base_url("admin/tabel_barangmasuk")?>" class="nav-link <?php if(in_array($activeMenu,['barang'])) echo "active"?>">
              <i class="nav-icon fas fa-box"></i>
              <p>
                Barang
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?php echo site_url("admin/tabel_mobilmasuk")?>" class="nav-link <?php if(in_array($activeMenu,['mobil'])) echo "active"?>">
              <i class="nav-icon fas fa-car"></i>
              <p>
                Mobil
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?php echo site_url("admin/pengguna")?>" class="nav-link <?php if(in_array($activeMenu,['pengguna'])) echo "active"?>">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Pengguna
              </p>
            </a>
          </li>
          <!-- <li class="nav-item <?php if(in_array($activeMenu,['tambahBarang', 'tambahMobil', 'tambahSatuan'])) {
            echo "menu-open";
            } ?>">
            <a href="#" class="nav-link <?php if(in_array($activeMenu,['tambahBarang', 'tambahMobil', 'tambahSatuan'])) {
            echo "active";
            } ?>">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                Formulir
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?php echo site_url('admin/form_barangmasuk') ?>" class="nav-link <?php if ($activeMenu == 'tambahBarang') echo "active"; ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tambah Barang</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo site_url('admin/form_mobilmasuk') ?>" class="nav-link <?php if ($activeMenu == 'tambahMobil') echo "active"; ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tambah Mobil</p>
                </a>
              </li>
            </ul>
          </li>  -->
          <!-- <li class="nav-item <?php if(in_array($activeMenu,['barangMasuk', 'barangKeluar', 'mobilMasuk', 'mobilKeluar', 'tabelSatuan'])) {
            echo "menu-open";
            } ?>">
            <a href="#" class="nav-link <?php if(in_array($activeMenu,['barangMasuk', 'barangKeluar', 'mobilMasuk', 'mobilKeluar', 'tabelSatuan'])) {
            echo "active";
            } ?>">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Tabel
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
              <a href="<?php echo site_url('admin/tabel_barangmasuk') ?>" class="nav-link <?php if ($activeMenu == 'barangMasuk') echo "active"; ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Barang Masuk</p>
                </a>
              </li>
              <li class="nav-item">
              <a href="<?php echo site_url('admin/tabel_barangkeluar') ?>" class="nav-link <?php if ($activeMenu == 'barangKeluar') echo "active"; ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Barang Keluar</p>
                </a>
              </li>
              <li class="nav-item">
              <a href="<?php echo site_url('admin/tabel_mobilmasuk') ?>" class="nav-link <?php if ($activeMenu == 'mobilMasuk') echo "active"; ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Mobil Masuk</p>
                </a>
              </li>
              <li class="nav-item">
              <a href="<?php echo site_url('admin/tabel_mobilkeluar') ?>" class="nav-link <?php if ($activeMenu == 'mobilKeluar') echo "active"; ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Mobil Keluar</p>
                </a>
              </li>
            </ul>
          </li> -->
          <li class="nav-item <?php if(in_array($activeMenu,['laporanBarang', 'laporanMobil'])) {
            echo "menu-open";
            } ?>">
            <a href="#" class="nav-link <?php if(in_array($activeMenu,['laporanBarang', 'laporanMobil'])) {
            echo "active";
            } ?>">
              <i class="nav-icon fas fa-file"></i>
              <p>
                Laporan
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
              <a href="<?php echo site_url('admin/tabel_barangkeluar') ?>" class="nav-link <?php if ($activeMenu == 'laporanBarang') echo "active"; ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Barang</p>
                </a>
              </li>
              <li class="nav-item">
              <a href="<?php echo site_url('admin/tabel_mobilkeluar') ?>" class="nav-link <?php if ($activeMenu == 'laporanMobil') echo "active"; ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Mobil</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
          <a href="<?php echo base_url('') ?>/auth/logout" class="nav-link">
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>
                Keluar
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"><?php echo $title ?></h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo site_url()?>">Home</a></li>
              <li class="breadcrumb-item active"><?php echo $title ?></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
  
  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-warning">
            <div class="inner">
              <h3>150</h3>

              <p>Stok Barang</p>
            </div>
            <div class="icon">
              <i class="fas fa-warehouse" style="font-size:65px;"></i>
            </div>
            <a href="<?=base_url('admin/tabel_barangmasuk')?>" class="small-box-footer">Info Lebih Lanjut <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-danger">
            <div class="inner">
              <h3>53</h3>

              <p>Barang Keluar</p>
            </div>
            <div class="icon">
              <i class="fas fa-boxes"></i>
            </div>
            <a href="<?=base_url('admin/tabel_barangmasuk')?>" class="small-box-footer">Info Lebih Lanjut <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-info">
            <div class="inner">
              <h3>6</h3>

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
              <h3>0</h3>
              
              <p>Mobil Disewakan</p>
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
          <!-- BAR CHART -->
          <div class="card card-dark">
            <div class="card-header">
              <h3 class="card-title">Grafik</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
            <div class="card-body">
              <div class="chart">
                <canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
              </div>
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
    </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; KESBANGPOL JAWA BARAT</strong>
    <div class="float-right d-none d-sm-block">
      <b>Admin LTE 3.2.0-rc</b>
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="plugins/jszip/jszip.min.js"></script>
<script src="plugins/pdfmake/pdfmake.min.js"></script>
<script src="plugins/pdfmake/vfs_fonts.js"></script>
<script src="plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<script src="plugins/datetimepicker/locale/id.js"></script>

<!-- Page specific script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": false, 
      "lengthChange": false, 
      "autoWidth": false,
      "scrollX": true,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
  })

  //Date picker
  $('#date').datetimepicker({
      locale: 'id',
      format: 'L',
  });
  
  $('#tanggal_masuk').datetimepicker({
      locale: 'id',
      format: 'L',
  });
  
  $('#tanggal_keluar').datetimepicker({
      locale: 'id',
      format: 'L',
  });
  
  $('#tanggal_berangkat').datetimepicker({
      locale: 'id',
      format: 'L',
  });
  
  $('#tanggal_kembali').datetimepicker({
      locale: 'id',
      format: 'L',
  });
  
  $('#tanggal_pengembalian').datetimepicker({
      locale: 'id',
      format: 'L',
  });

  $(function () {
    /* ChartJS
     * -------
     * Here we will create a few charts using ChartJS
     */

    //-------------
    //- BAR CHART -
    //-------------

    // Get context with jQuery - using jQuery's .get() method.
    var barChartCanvas = $('#barChart').get(0).getContext('2d')
    var barChartData = {
      labels  : ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
      datasets: [
        {
          label               : 'Digital Goods',
          backgroundColor     : 'rgba(60,141,188,0.9)',
          borderColor         : 'rgba(60,141,188,0.8)',
          pointRadius          : false,
          pointColor          : '#3b8bba',
          pointStrokeColor    : 'rgba(60,141,188,1)',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(60,141,188,1)',
          data                : [28, 48, 40, 19, 86, 27, 90]
        },
        {
          label               : 'Electronics',
          backgroundColor     : 'rgba(210, 214, 222, 1)',
          borderColor         : 'rgba(210, 214, 222, 1)',
          pointRadius         : false,
          pointColor          : 'rgba(210, 214, 222, 1)',
          pointStrokeColor    : '#c1c7d1',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(220,220,220,1)',
          data                : [65, 59, 80, 81, 56, 55, 40]
        },
      ]
    }
    var temp0 = barChartData.datasets[0]
    var temp1 = barChartData.datasets[1]
    barChartData.datasets[0] = temp1
    barChartData.datasets[1] = temp0

    var barChartOptions = {
      responsive              : true,
      maintainAspectRatio     : false,
      datasetFill             : false
    }

    new Chart(barChartCanvas, {
      type: 'bar',
      data: barChartData,
      options: barChartOptions
    })

  })

  new TomSelect("#nip",{
        create: false,
        sortField: {
            field: "text",
            direction: "asc"
        }
    });
</script>

</body>
</html>
