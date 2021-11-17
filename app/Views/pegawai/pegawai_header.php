<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
<body class="hold-transition sidebar-mini layout-fixed">
  <?php $session = session()?>
  <!-- 
        <h4>Selamat datang pegawai!</h4>
        <?php //echo $session->get('username')?>
        <a href="/auth/logout">Logout</a>
      -->
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-success navbar-light">
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
      <!-- Control Sidebar -->
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="<?php echo base_url('') ?>/#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-controlsidebar-slide="true" href="<?php echo base_url('') ?>/#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
      <!-- User Dropdown Menu -->         
      <li class="dropdown user user-menu">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
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
      <span class="brand-text font-weight-light">ATKMobil | Pegawai</span>
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

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Cari" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="<?php echo site_url()?>" class="nav-link <?php if(in_array($activeMenu,['dashboard'])) echo "active"?>">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Halaman Utama
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?php echo site_url("pegawai/tabel_barangmasuk")?>" class="nav-link <?php if(in_array($activeMenu,['barang'])) echo "active"?>">
              <i class="nav-icon fas fa-box"></i>
              <p>
                Barang
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?php echo site_url("pegawai/tabel_mobilmasuk")?>" class="nav-link <?php if(in_array($activeMenu,['mobil'])) echo "active"?>">
              <i class="nav-icon fas fa-car"></i>
              <p>
                Mobil
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
                <a href="<?php echo site_url('pegawai/form_barangmasuk') ?>" class="nav-link <?php if ($activeMenu == 'tambahBarang') echo "active"; ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tambah Barang</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo site_url('pegawai/form_mobilmasuk') ?>" class="nav-link <?php if ($activeMenu == 'tambahMobil') echo "active"; ?>">
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
              <a href="<?php echo site_url('pegawai/tabel_barangmasuk') ?>" class="nav-link <?php if ($activeMenu == 'barangMasuk') echo "active"; ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Barang Masuk</p>
                </a>
              </li>
              <li class="nav-item">
              <a href="<?php echo site_url('pegawai/tabel_barangkeluar') ?>" class="nav-link <?php if ($activeMenu == 'barangKeluar') echo "active"; ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Barang Keluar</p>
                </a>
              </li>
              <li class="nav-item">
              <a href="<?php echo site_url('pegawai/tabel_mobilmasuk') ?>" class="nav-link <?php if ($activeMenu == 'mobilMasuk') echo "active"; ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Mobil Masuk</p>
                </a>
              </li>
              <li class="nav-item">
              <a href="<?php echo site_url('pegawai/tabel_mobilkeluar') ?>" class="nav-link <?php if ($activeMenu == 'mobilKeluar') echo "active"; ?>">
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
              <a href="<?php echo site_url('pegawai/tabel_barangkeluar') ?>" class="nav-link <?php if ($activeMenu == 'laporanBarang') echo "active"; ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Barang</p>
                </a>
              </li>
              <li class="nav-item">
              <a href="<?php echo site_url('pegawai/tabel_mobilkeluar') ?>" class="nav-link <?php if ($activeMenu == 'laporanMobil') echo "active"; ?>">
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