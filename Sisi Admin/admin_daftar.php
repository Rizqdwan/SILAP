<!-- php -->
<?php
use Vtiful\Kernel\Format;

// Memasukkan file config agar terkoneksi dengan database
include "config.php";

// Login start
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: login.php");
}
// login

// Nama variabel penampung
$nama = '';
$tnik = '';
$umur = '';
$gender = '';
$email = '';
$layanan = '';
$puskesmas = '';
$tgl = date("d-m-y H:i:s");
$komentar = '';
$berhasil = '';
$gagal = '';
$gagal_Isian = '';

// mengambil data barang
$data = mysqli_query($koneksi, "SELECT * FROM pasien");

// menghitung data jadwal
$jumlah = mysqli_num_rows($data);

// UPDATE & DELETE
// Untuk menangkap tangkapan pada isian id = op
if (isset($_GET['op'])) {
    $op = $_GET['op'];
} else {
    $op = '';
}

// Untuk melakukan penghapusan data dari hasil op = delete
if ($op == 'delete') {
    $id = $_GET['id'];
    $sql1 = "delete from pasien where id = '$id'";
    $q1 = mysqli_query($koneksi, $sql1);
    if ($q1) {
        $berhasil = "Berhasil hapus data";
        header("refresh:2;url=admin_daftar.php");
    } else {
        $gagal = "Gagal melakukan delete data";
        header("refresh:2;url=admin_daftar.php");
    }
}

// Untuk melakukan pengeditan/pengupdetan data dari hasil op = edit,
// yang bertujuan untuk menampilkan keseluruhan isian data dari database
// yang bertujuan untuk melakkukan pengeditan data
if ($op == 'edit') {
    $id = $_GET['id'];
    $sql1 = "select * from pasien where id = '$id'";
    $q1 = mysqli_query($koneksi, $sql1);
    $r1 = mysqli_fetch_array($q1);
    $nama = $r1['nama'];
    $gender = $r1['jenis_Kelamin'];
    $tnik = $r1['tnik'];
    $umur = $r1['umur'];
    $email = $r1['email'];
    $tgl = $r1['tgl_daftar'];
    $puskesmas = $r1['puskesmas'];
    $layanan = $r1['id_layanan'];

    if ($nik = '') {
        $gagal_Isian = "Data tidak ditemukan";
    }
}

// Fungsi isset () digunakan untuk memeriksa apakah suatu variabel sudah diatur atau belum
// merupakan pengecekan untuk melakukan simpan dan edit data
if (isset($_POST['submit'])) { //untuk create
    // membuat fungsi untuk memasukkan datanya dgn method POST
    $nama = $_POST['nama'];
    $gender = $_POST['gender'];
    $tnik = $_POST['tnik'];
    $umur = $_POST['umur'];
    $email = $_POST['email'];
    $tgl = $_POST['tanggal'];
    $puskesmas = $_POST['puskesmas'];
    $layanan = $_POST['layanan'];

    // membuat sebuah decision untuk melakukan pengecekan terhadap isian semua data diatas
    if ($tnik && $gender && $umur && $nama && $email && $tgl && $puskesmas && $layanan) {
        if ($op == 'edit') { //untuk update/edit data
            $masukkan = "UPDATE `pasien` SET `nama`='$nama',`jenis_Kelamin`='$gender',`tnik`='$tnik',`umur`='$umur',
            `email`='$umur',`tgl_daftar`='$tgl',`puskesmas`='$puskesmas',`id_layanan`='$layanan' where id = '$id'";
            $simpan = mysqli_query($koneksi, $masukkan);

            if ($simpan) {
                $berhasil = "anda berhasil mengupdate data";
                header("refresh:2;url=admin_daftar.php");
            } else {
                $gagal = "anda gagal memasukkan data";
                header("refresh:2;url=admin_daftar.php");
            }
        } else { //untuk insert data
            $masukkan = "INSERT INTO `pasien`(`id`, `nama`, `jenis_Kelamin`, `tnik`, `umur`, `email`, `tgl_daftar`, `puskesmas`, `id_layanan`) VALUES (NULL, '$nama', '$gender', '$tnik', '$umur',
            '$email','$tgl','$puskesmas','$layanan')";
            $simpan = mysqli_query($koneksi, $masukkan);

            if ($simpan) {
                $berhasil = "anda berhasil memasukkan data";
                header("refresh:2;url=admin_daftar.php");
            } else {
                $gagal = "anda gagal memasukkan data";
                header("refresh:2;url=admin_daftar.php");
            }
        }
    } else {
        $gagal_Isian = "Silakan masukkan semua data";
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

    <title>Admin SILAP - Pendaftaran</title>

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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

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
            <li class="nav-item active">
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
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg" alt="...">
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
                        <!-- Nav Item -->

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="modal" data-target="#logoutModal"
                                role="button">
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
                    <h1 class="h3 mb-2 text-gray-800">Tabel Data Pendaftaran</h1>

                    <!-- Content Input -->
                    <div class="row">
                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-info">Data Pendaftaran Pasien</h6>
                            </div>
                            <!-- Form Daftar -->
                            <div class="card-body">
                                <!-- Kode Php -->
                                <?php
                                if ($gagal) {
                                    ?>
                                    <div class="alert alert-danger" role="alert">
                                        <?php echo $gagal ?>
                                    </div>
                                    <?php
                                }
                                ?>
                                <?php
                                if ($berhasil) {
                                    ?>
                                    <div class="alert alert-success" role="alert">
                                        <?php echo $berhasil ?>
                                    </div>
                                    <?php
                                }
                                ?>
                                <?php
                                if ($gagal_Isian) {
                                    ?>
                                    <div class="alert alert-danger" role="alert">
                                        <?php echo $gagal_Isian ?>
                                    </div>
                                    <?php
                                }
                                ?>
                                <!-- Kode Php -->
                                <!-- Kode daftar registrasi pasien -->
                                <form class="border border-info p-4 shadow-sm rounded-4" method="post" action="">
                                    <h3 class="text-center">Daftar</h3>
                                    <div class="mb-3">
                                        <label for="exampleInputName" class="form-label">Full Name</label>
                                        <input type="text" class="form-control" id="exampleInputName" name="nama"
                                            value="<?php echo $nama ?>">
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputPuskes" class="form-label">Jenis Kelamin</label>
                                        <select class="form-select form-select" name="gender" id="gender">
                                            <option disabled selected>--pilih--</option>
                                            <option value="Laki-laki" <?php if ($gender == "Laki-laki")
                                                echo "selected" ?>>Laki-laki</option>
                                                <option value="Perempuan" <?php if ($gender == "Perempuan")
                                                echo "selected" ?>>Perempuan</option>
                                            </select>
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleInputNIK" class="form-label">Nik</label>
                                            <input type="text" class="form-control" id="exampleInputNIK" name="tnik"
                                                value="<?php echo $tnik ?>">
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputNIK" class="form-label">Umur</label>
                                        <input type="text" class="form-control" id="exampleInputUmur" name="umur"
                                            value="<?php echo $umur ?>">
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" name="email"
                                            value="<?php echo $email ?>">
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputtgl1" class="form-label">Tanggal Daftar</label>
                                        <input type="date" class="form-control" id="exampleInputtgl1" name="tanggal"
                                            value="<?php echo $tgl ?>">
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputPuskes" class="form-label">Pilih Layanan</label>
                                        <select class="form-select form-select" name="layanan" id="layanan">
                                            <option disabled selected>--pilih--</option>
                                            <option value="1" <?php if ($layanan == "1")
                                                echo "selected" ?>>Layanan
                                                Vaksinasi</option>
                                            <option value="2" <?php if ($layanan == "2")
                                                echo "selected" ?>>Layanan
                                                Imunisasi</option>
                                            <option value="3" <?php if ($layanan == "3")
                                                echo "selected" ?>>Kesehatan
                                                Gizi</option>
                                            <option value="4" <?php if ($layanan == "4")
                                                echo "selected" ?>>Kesehatan
                                                Rutin</option>
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputPuskes" class="form-label">Pilih Puskesmas</label>
                                        <select class="form-select form-select" name="puskesmas" id="puskesmas">
                                        <option disabled selected>--pilih--</option>
                                            <option value="Puskesmas Gedongtengen" <?php if ($puskesmas == "Puskesmas Gedongtengen" && "190")
                                            echo "selected" ?>>Puskesmas Gedongtengen</option>
                                            <option value="Puskesmas Gondomanan" <?php if ($puskesmas == "Puskesmas Gondomanan" && "191")
                                            echo "selected" ?>>Puskesmas Gondomanan</option>
                                            <option value="Puskesmas Kotagede 2" <?php if ($puskesmas == "Puskesmas Kotagede 2" && "193")
                                            echo "selected" ?>>Puskesmas Kotagede 2</option>
                                            <option value="Puskesmas Tegalrejo" <?php if ($puskesmas == "Puskesmas Tegalrejo" && "192")
                                            echo "selected" ?>>Puskesmas Tegalrejo</option>
                                        </select>
                                    </div>
                                    <button type="submit" name="submit" id="submit"
                                        class="btn btn-primary pjg">Submit</button>
                                </form>
                                <!-- Akhir kode daftar registrasi pasien -->
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-info">Data Pendaftaran Pasien</h6>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <!-- Tabel -->
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th scope="col">No</th>
                                                <th scope="col">Nama</th>
                                                <th scope="col">Jenis Kelamin</th>
                                                <th scope="col">NIK</th>
                                                <th scope="col">Umur</th>
                                                <th scope="col">Email</th>
                                                <th scope="col">Tanggal Daftar</th>
                                                <th scope="col">Puskesmas</th>
                                                <th scope="col">Layanan</th>
                                                <th scope="col">Aksi</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $sql2 = "select * from pasien order by id DESC";
                                            $q2 = mysqli_query($koneksi, $sql2);
                                            $urut = 1;
                                            while ($r2 = mysqli_fetch_array($q2)) {
                                                $id = $r2['id'];
                                                $nama = $r2['nama'];
                                                $gender = $r2['jenis_Kelamin'];
                                                $tnik = $r2['tnik'];
                                                $umur = $r2['umur'];
                                                $email = $r2['email'];
                                                $tgl = $r2['tgl_daftar'];
                                                $tujuan = $r2['puskesmas'];
                                                $layanan = $r2['id_layanan'];
                                                ?>
                                                <tr>
                                                    <th scope="row">
                                                        <?php echo $urut++ ?>
                                                    </th>
                                                    <td scope="row">
                                                        <?php echo $nama ?>
                                                    </td>
                                                    <td scope="row">
                                                        <?php echo $gender ?>
                                                    </td>
                                                    <td scope="row">
                                                        <?php echo $tnik ?>
                                                    </td>
                                                    <td scope="row">
                                                        <?php echo $umur ?>
                                                    </td>
                                                    <td scope="row">
                                                        <?php echo $email ?>
                                                    </td>
                                                    <td scope="row">
                                                        <?php echo $tgl ?>
                                                    </td>
                                                    <td scope="row">
                                                        <?php echo $tujuan ?>
                                                    </td>
                                                    <td scope="row">
                                                        <?php echo $layanan ?>
                                                    </td>
                                                    <td scope="row">
                                                        <a href="admin_daftar.php?op=edit&id=<?php echo $id ?>"><button
                                                                type="button" name="edit"
                                                                class="btn btn-warning btn-sm">Edit</button></a>
                                                        <a href="admin_daftar.php?op=delete&id=<?php echo $id ?>"
                                                            onclick="return confirm('Apakah Anda Yakin Akan Menghapus Data?')"><button
                                                                type="button" name="delete"
                                                                class="btn btn-danger btn-sm">Hapus</button></a>
                                                    </td>
                                                </tr>
                                                <?php
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                    <!-- Tabel -->
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
    <!-- Modal -->

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