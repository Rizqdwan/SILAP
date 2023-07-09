<?php
include 'config.php';

// Login start
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: login.php");
}
// login

// nama variabel
$sukses = "";
$gagal = "";

// mengambil data barang
$data = mysqli_query($koneksi,"SELECT * FROM konten");
 
// menghitung data jadwal
$jumlah = mysqli_num_rows($data);

$id = $_GET['id'];
$kode = "select * from konten where id = '$id'";
$query = mysqli_query($koneksi, $kode);
$data = mysqli_fetch_array($query);

$judul = $data['title'];
$deskripsi = $data['deskripsi'];
$gambar = $data['gambar'];
$layanan = $data['layanan'];
$puskesmas = $data['puskesmas'];

// Untuk menambah data konten
if (isset($_POST['submit'])) {
    // membuat variabel untuk menampung data dari form
    $judul = $_POST['title'];
    $deskripsi = $_POST['deskripsi'];
    $gambar = $_FILES['gambar']['name'];
    $source = $_FILES['gambar']['tmp_name'];

    if ($gambar != "") {
        $ekstensi_diperbolehkan = array('png', 'jpg'); //ekstensi file gambar yang bisa diupload 
        $x = explode('.', $gambar); //memisahkan nama file dengan ekstensi yang diupload
        $ekstensi = strtolower(end($x));
        $angka_acak = rand(1, 999);
        $nama_gambar_baru = $angka_acak . '-' . $gambar; //menggabungkan angka acak dengan nama file sebenarnya
        if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
            move_uploaded_file($source, 'uploadIMG/' . $nama_gambar_baru); //memindah file gambar ke folder gambar

            // jalankan query UPDATE berdasarkan ID yang produknya kita edit
            $query = "UPDATE `konten` SET `title`='$judul',`deskripsi`='$deskripsi',`gambar`='$nama_gambar_baru' WHERE id = '$id'";
            $result = mysqli_query($koneksi, $query);
            // periska query apakah ada error
            if (!$result) {
                die("Query gagal dijalankan: " . mysqli_errno($koneksi) .
                    " - " . mysqli_error($koneksi));
            } else {
                $sukses = "anda berhasil mengupdate data";
                header("refresh:2;url=admin_konten.php");
            }
        } else {
            //jika file ekstensi tidak jpg dan png maka alert ini yang tampil
            $gagal = 'Ekstensi gambar yang boleh hanya jpg atau png.';
        }
    } else {
        // jalankan query UPDATE berdasarkan ID yang produknya kita edit
        $query = "UPDATE konten SET title = '$judul', deskripsi = '$deskripsi' WHERE id = '$id'";
        $result = mysqli_query($koneksi, $query);
        // periska query apakah ada error
        if (!$result) {
            die("Query gagal dijalankan: " . mysqli_errno($koneksi) .
                " - " . mysqli_error($koneksi));
        } else {
            $sukses = "anda berhasil mengupdate data";
        }
    }
}
?>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin SILAP - Update Konten</title>

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

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
            <li class="nav-item">
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
            <li class="nav-item active">
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
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
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
                <div class="container-fluid p-4">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Update Konten</h1>

                    <!-- Table Ubah konten -->
                    <div class="row mt-3">
                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-info">Ubah Konten</h6>
                            </div>
                            <div class="card-body">
                                <!-- php -->
                                <?php
                                if ($sukses) {
                                ?>
                                <div class="alert alert-success" role="alert">
                                    <?php echo $sukses ?>
                                </div>
                                <?php
                                }
                                ?>
                                <?php
                                if ($gagal) {
                                ?>
                                <div class="alert alert-danger" role="alert">
                                    <?php echo $gagal ?>
                                </div>
                                <?php
                                }
                                ?>
                                <!--  -->
                                <form class="border border-info p-4 shadow-sm rounded-4" method="post" action="" enctype="multipart/form-data">
                                    <h3 class="text-center">Edit Konten</h3>
                                    <div class="mb-3">
                                        <label for="exampleInputName" class="form-label">Judul</label>
                                        <input type="text" class="form-control" id="exampleInputName" name="title" value="<?php echo $judul ?>">
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputNIK" class="form-label">Deskripsi</label>
                                        <textarea class="form-control" name="deskripsi" id="exampleInputNIK" rows="10" value="<?php echo $deskripsi ?>"><?php echo $deskripsi ?></textarea>
                                    </div>
                                    <div class="mb-3">
                                        <table width="100%">
                                            <tr>
                                                <td colspan="2"><label for="exampleInputEmail1" class="form-label">File Gambar</label></td>
                                            </tr>
                                            <tr>
                                                <td><img class="mx-auto text-center rounded-4" src="uploadIMG/<?php echo $gambar ?>"
                                                        width="100px" height="100px"></td>
                                                <td><input type="file" class="form-control" id="exampleInputEmail1" name="gambar"
                                                        value="<?php echo $gambar ?>"></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputtgl1" class="form-label">Puskesmas</label>
                                        <input type="text" class="form-control" id="exampleInputtgl1" name="tanggal" value="<?php echo $puskesmas ?>" disabled>
                                    </div>    
                                    <div class="mb-3">
                                        <label for="exampleInputtgl1" class="form-label">Layanan</label>
                                        <input type="text" class="form-control" id="exampleInputtgl1" name="tanggal" value="<?php echo $layanan ?>" disabled>
                                    </div>
                                    <div class="mb-3">
                                        <button type="submit" name="submit" id="submit" class="btn btn-primary pjg text-center">Submit</button>
                                    </div>
                                </form>
                                <!-- Akhir kode daftar registrasi pasien -->
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

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>

</html>