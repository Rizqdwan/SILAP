<!-- php -->
<?php
use Vtiful\Kernel\Format;

// Memasukkan file config agar terkoneksi dengan database
include "config.php";

session_start();

if (!isset($_SESSION['username'])) {
    header("Location: login.php");
}

// count data

// daftar
// mengambil data barang
$data = mysqli_query($koneksi,"SELECT * FROM pasien");
 
// menghitung data jadwal
$jumlah = mysqli_num_rows($data);


// lokasi
// mengambil data barang
$data1 = mysqli_query($koneksi,"SELECT * FROM lokasi");
 
// menghitung data jadwal
$jumlah1 = mysqli_num_rows($data1);


// konten
// mengambil data barang
$data2 = mysqli_query($koneksi,"SELECT * FROM konten");
 
// menghitung data jadwal
$jumlah2 = mysqli_num_rows($data2);


// jadwal
// mengambil data barang
$data3 = mysqli_query($koneksi,"SELECT * FROM jadwal");
 
// menghitung data jadwal
$jumlah3 = mysqli_num_rows($data3);

?>

<!-- php -->


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dashboard SILAP</title>
    
    <!-- Custom fonts for this template-->
    <link rel="icon" href="img/SILAP.png" type="image/x-icon">

    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-info sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Admin <sup>2</sup></div>
            </a>

            <!-- Divider -->
            <hr class="text-white">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index.php">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="text-white">

            <!-- Heading -->
            <div class="sidebar-heading">
                Interface
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Content</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Isi Konten:</h6>
                        <a class="collapse-item" href="admin_lokasi.php">Lokasi</a>
                        <a class="collapse-item" href="admin_konten.php">Konten</a>
                        <a class="collapse-item" href="admin_jadwal.php">Jadwal</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="admin_daftar.php">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Daftar Pasien</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="text-white">

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Selamat Datang -->
                    <h4 class="ms-4 d-none d-lg-inline text-gray-600">Selamat Datang
                        <?php echo $_SESSION['username'] ?>
                    </h4>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">!</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <?php
                                    include("config.php");

                                    $id = "";
                                    $komentar = "";

                                    $sql2 = "select * from saran order by id DESC";
                                    $q2 = mysqli_query($koneksi, $sql2);
                                    $urut = 1;
                                    while ($r2 = mysqli_fetch_array($q2)) {
                                        $id = $r2['id'];
                                        $komentar = $r2['tkomentar'];
                                ?>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncte">
                                            <?php echo $komentar ?>
                                        </div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <?php
                                    }
                                ?>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#"  data-toggle="modal" data-target="#logoutModal" role="button">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Log Out</span>
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                            </a>
                        </li>

                    </ul>
                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col ms-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Pendaftaran Pasien</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                <?php echo $jumlah ?>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="mr-2 fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col ms-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Lokasi Puskesmas</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                <?php echo $jumlah1 ?>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="mr-2 fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col ms-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Konten Puskesmas
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                                <?php echo $jumlah2 ?>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="mr-2 fas fa-clipboard-list fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col ms-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                Jadwal Puskesmas</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                <?php echo $jumlah3 ?>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="mr-2 fas fa-comments fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-xl-6 col-md-6 text-center">
                            <div class="card border-left-warning shadow w-100 h-75 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col ms-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                Pendaftar Layanan Puskesmas Tahun Lalu</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800 text-center">
                                                <iframe class="w-50 mx-auto" src="Grafik/grafik_SpedoOld.php" frameborder="0"></iframe>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="mr-2 fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-6 col-md-6 text-center">
                            <div class="card border-left-warning shadow w-100 h-75 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col ms-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                Pendaftaran Layanan Puskesmas Saat Ini</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800 text-center">
                                                <iframe class="w-50 mx-auto" src="Grafik/grafik_SpedoNow.php" frameborder="0"></iframe>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="mr-2 fas fa-clipboard fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <h1 class="h3 mb-3 text-gray-800">Laporan Masa Kini</h1>
                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-info">Rasio Total Pendaftar Seluruh Layanan</h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-area">
                                        <!-- <canvas id="myAreaChart"></canvas> -->
                                        <iframe class="w-100 h-100" src="Grafik/grafik_Line.php" frameborder="0"></iframe>
                                    </div>
                                    <hr>
                                    Grafik rasio perbandingan total pendaftar pada seluruh layanan puskesmas berdasarkan periode Bulan
                                </div>
                            </div>
                        </div>

                        <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-info">Jumlah Pendaftar layanan per-Puskesmas</h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-area pt-4 pb-2">
                                        <iframe class="w-100 h-100" src="Grafik/grafik_PiePuskesUmum.php" frameborder="0"></iframe>
                                    </div>
                                    <hr>
                                    Data total pendaftar dari seluruh layanan pada Masing-Masing Puskesmas 
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <div class="col-lg-8 mb-4">

                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-info">Analisa perbandingan Layanan di Masing-Masing Puskesmas</h6>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area">
                                        <iframe class="w-100 h-100" src="Grafik/grafik_GroupBar.php" frameborder="0"></iframe>
                                    </div>
                                    <hr>
                                    Data Analisa Perbandingan pada Masing-Masing Layananan antar tiap Puskesmas
                                </div>
                            </div>

                        </div>

                        <!-- Content Column -->
                        <div class="col-lg-4 mb-4">

                            <!-- Project Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-info">Kritik & Masukan</h6>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <!-- Tabel -->
                                        <table class="table table-hover table-stripped">
                                            <thead>
                                                <tr>
                                                    <th scope="col">No</th>
                                                    <th scope="col">Kritik & Saran dari User</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                include("config.php");

                                                $id = "";
                                                $komentar = "";

                                                $sql2 = "select * from saran order by id DESC";
                                                $q2 = mysqli_query($koneksi, $sql2);
                                                $urut = 1;
                                                while ($r2 = mysqli_fetch_array($q2)) {
                                                    $id = $r2['id'];
                                                    $komentar = $r2['tkomentar'];
                                                ?>
                                                <tr>
                                                    <th scope="row">
                                                        <?php echo $urut++ ?>
                                                    </th>
                                                    <td scope="row">
                                                        <?php echo $komentar ?>
                                                    </td>
                                                </tr>
                                                <?php
                                                }
                                                ?>
                                            </tbody>
                                        </table>
                                        <!-- tabel -->
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; SILAP 2023</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="logout.php">Logout</a>
                </div>
            </div>
        </div>
    </div>
    <!-- modal -->

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level plugins -->
    <script src="js/demo/datatables-demo.js"></script>
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>


</body>

</html>