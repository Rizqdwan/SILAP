<!-- php -->
<?php
use Vtiful\Kernel\Format;

// Memasukkan file config agar terkoneksi dengan database
include "config.php";

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
$ajg2 = '';

// KONTEN 
$id = $_GET['id'];
$kode = "select * from konten where id = '$id'";
$query = mysqli_query($koneksi, $kode);
$data = mysqli_fetch_array($query);

$judul = $data['title'];
$layanann = $data['layanan'];
$puskesmas = $data['puskesmas'];

// Percabangan tampil layanan
if ($layanann == 1){
  $ajg2 = 'Layanan Imunisasi';
}else if($layanann == 2){
  $ajg2 = 'Layanan Vaksinasi';
}else if($layanann == 3){
  $ajg2 = 'Kesehatan Ibu';
}else{
  $ajg2 = 'Kesehatan Gizi';
}

// Variabel Penyelamat
$ajg = $layanann;
$tujuan = $puskesmas;

// script php mysql untuk menyimpan data (insert data ke database)
if (isset($_POST['simpan'])) {
  $komentar = $_POST['komentar1'];
  //variabel query adalah variabel yang menyimpan perintah sql dml
  if ($komentar != '') {
    $query = mysqli_query($koneksi, "INSERT INTO saran (id,tkomentar) VALUES (NULL,'$komentar')");

    if ($query) {
      echo "anda berhasil memasukkan data";
      header("refresh:0;url=daftar.php");
    } else {
      echo "anda gagal memasukkan data";
    }
  } else {
    echo "silahkan masukkan semua data";
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
  $tujuan = $_POST['puskesmass'];
  $ajg = $_POST['layanan'];

  // membuat sebuah decision untuk melakukan pengecekan terhadap isian semua data diatas
  if ($tnik && $gender && $umur && $nama && $email && $tgl && $tujuan && $ajg) {
    //untuk insert data
    $masukkan = "INSERT INTO `pasien`(`id`, `nama`, `jenis_Kelamin`, `tnik`, `umur`, `email`, `tgl_daftar`, `puskesmas`, `id_layanan`) VALUES (NULL, '$nama', '$gender', '$tnik', '$umur',
  '$email','$tgl', '$tujuan','$ajg')";
    $simpan = mysqli_query($koneksi, $masukkan);

    if ($simpan) {
      $berhasil = "anda berhasil mendaftarkan layanan";
    } else {
      $gagal = "anda gagal mendaftar";
    }
  } else {
    $gagal_Isian = "Silakan masukkan semua data";
  }
}
?>
<!-- php -->

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Registrasi Pasien | Silap</title>
  <link rel="icon" href="img/SILAP.png" type="image/x-icon">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" 
  rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" 
  crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
</head>

<body class="bg">

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark shadow-5-strong">
    <div class="container">
      <a class="navbar-brand brand" href="#">SILAP</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-right" id="navbarNavDropdown">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link text-white" aria-current="page" href="utama.php">Home</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- Akhir Navbar -->

  <!-- isian -->
  <section class="container pb-4 mt-5 pt-5">
    <div class="row">
      <div class="col-md-12 align-items-center mb-4 pt-3">

        <!-- Kode Php -->
        <?php
        if ($gagal) {
          ?>
          <div class="alert alert-danger" role="alert">
            <?php echo $gagal ?>
          </div>
          <?php
          header("refresh:2"); //5 : detik
        }
        ?>
        <?php
        if ($berhasil) {
          ?>
          <div class="alert alert-success" role="alert">
            <?php echo $berhasil ?>
          </div>
          <?php
          header("refresh:3;url=utama.php");
        }
        ?>
        <?php
        if ($gagal_Isian) {
          ?>
          <div class="alert alert-danger" role="alert">
            <?php echo $gagal_Isian ?>
          </div>
          <?php
          header("refresh:2");
        }
        ?>
        <!-- Kode Php -->

        <!-- Kode daftar registrasi pasien -->
        <form class="p-4 shadow border rounded-4 text-light" method="post" action="">
          <h3 class="text-center">Daftar</h3>
          <div class="mb-3">
            <label for="exampleInputName" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="exampleInputName" name="nama" value="<?php echo $nama ?>">
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
              <input type="text" class="form-control" id="exampleInputNIK" name="tnik" value="<?php echo $tnik ?>">
          </div>
          <div class="mb-3">
            <label for="exampleInputNIK" class="form-label">Umur</label>
            <input type="text" class="form-control" id="exampleInputUmur" name="umur" value="<?php echo $umur ?>">
          </div>
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" name="email" value="<?php echo $email ?>">
          </div>
          <div class="mb-3">
            <label for="exampleInputtgl1" class="form-label">Tanggal Daftar</label>
            <input type="date" class="form-control" id="exampleInputtgl1" name="tanggal" value="<?php echo $tgl ?>">
          </div>       
          <div class="mb-3">
            <label for="exampleInputtgl1" class="form-label">Puskesmas</label>
            <input type="text" class="form-control" id="exampleInputtgl1" name="puskesmas" value="<?php echo $puskesmas ?>" disabled>
            <input type="hidden" class="form-control" id="exampleInputtgl1" name="puskesmass" value="<?php echo $tujuan ?>">
          </div>    
          <div class="mb-3">
            <label for="exampleInputtgl1" class="form-label">Layanan</label>
            <input type="text" class="form-control" id="exampleInputtgl1" name="tanggal" value="<?php echo $ajg2 ?>" disabled>
            <input type="hidden" name="layanan" value="<?php echo $ajg ?>" />
          </div>
          <button type="submit" name="submit" id="submit" class="btn btn-info text-light pjg">Submit</button>
        </form>
          <!-- Akhir kode daftar registrasi pasien -->
      </div>
    </div>
  </section>
    <!-- Akhir isian -->

    <!-- Untuk menampilkan data -->

    <!-- Footer -->
    <div class="col-12 text-center p-2 text-dark bg-light">
        © 2023 Copyright :
        <a class="text-decoration-none text-info" href="../Sisi Admin/login.php">SILAP</a>
  </div>
  <!-- Akhir Footer -->

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
    integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
    crossorigin="anonymous"></script>
</body>

</html>