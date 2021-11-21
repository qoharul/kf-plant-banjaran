<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Admin');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.

// $routes->get('/', 'Home::index');
// $routes->get('/', 'Admin::index');
// $routes->post('admin/mobil_keluar', 'Admin::mobil_keluar');
// $routes->get('/auth/login', 'Auth::login');
// $routes->post('/auth/login/valid_login', 'Auth::valid_login');
// $routes->get('/auth/logout', 'Auth::logout');
// $routes->get('/', 'Admin::index');
// $routes->get('/admin/form_barangmasuk', 'Admin::form_barangmasuk');
// $routes->post('/admin/proses_databarang_masuk_insert', 'Admin::proses_databarang_masuk_insert');
//$routes->get('/admin/ubah_barang/(:num)', 'Admin::ubah_barang/$1');
//$routes->post('/admin/proses_databarang_masuk_update/(:num)', 'Admin::proses_databarang_masuk_update/$1');
//$routes->get('/admin/hapus_barang/(:num)', 'Admin::hapus_barang/$1');
// $routes->get('/admin/ubah_mobil/(:num)', 'Admin::ubah_mobil/$1');
// $routes->post('/admin/proses_datamobil_masuk_update/(:num)', 'Admin::proses_datamobil_masuk_update/$1');

/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
