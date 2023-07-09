<!-- Php -->
<?php
include 'config.php';

// Nama variabel penampung
$judul = '';
$deskripsi = '';
$gambar = '';
$komentar = '';
$layanan = '';
$puskesmas = '';
$ajg2 ='';

// KONTEN 
$id = $_GET['id'];
$kode = "select * from konten where id = '$id'";
$query = mysqli_query($koneksi, $kode);
$data = mysqli_fetch_array($query);

$judul = $data['title'];
$deskripsi = $data['deskripsi'];
$gambar = $data['gambar'];
$layanan = $data['layanan'];
$puskesmas = $data['puskesmas'];

// Percabangan tampil layanan
if ($layanan == 1){
  $ajg2 = 'Layanan Imunisasi';
}else if($layanan == 2){
  $ajg2 = 'Layanan Vaksinasi';
}else if($layanan == 3){
  $ajg2 = 'Kesehatan Ibu';
}else{
  $ajg2 = 'Kesehatan Gizi';
}


// script php mysql untuk menyimpan data (insert data ke database)
if (isset($_POST['simpan'])) {
  $komentar = $_POST['komentar1'];
  //variabel query adalah variabel yang menyimpan perintah sql dml
  if ($komentar != '') {
    $query = mysqli_query($koneksi, "INSERT INTO saran (id,tkomentar) VALUES (NULL,'$komentar')");

    if ($query) {
      echo "anda berhasil memasukkan data";
      header("refresh:0;");
    } else {
      echo "anda gagal memasukkan data";
    }
  } else {
    echo "silahkan masukkan semua data";
  }
}

?>
<!-- Php -->


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Berita Puskesmas | Silap</title>
  <link rel="icon" href="img/SILAP.png" type="image/x-icon">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" 
  rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" 
  crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body class="">
  <!-- Navbar -->
 <nav class="navbar navbar-expand-lg navbar-dark shadow-5-strong bg">
    <div class="container">
      <a class="navbar-brand brand" href="#">SILAP</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-right" id="navbarNavDropdown">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item px-lg-3 mx-lg-3">
            <a class="nav-link active " aria-current="page" href="utama.php">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link px-lg-3 mx-lg-3" href="lokasi.php">Lokasi</a>
          </li>
          <li class="nav-item">
            <a class="nav-link px-lg-3 mx-lg-3" href="jadwal.php">Jadwal</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- Akhir Navbar -->

  <!--  -->
  <section class="container navi">
    <div class="col-md-12">
      <h3 class="text-center news-font">
        <?php echo $judul ?>
      </h3>
      <hr>
      <img class="w-50 mx-auto rounded-4 gam" src="../Sisi Admin/uploadIMG/<?php echo $gambar ?>" alt="">
      <div class="d-flex justify-content-between">
        <!-- <p>
              <?php echo $ajg2 ?>
        </p>
        <p>
              <?php echo $puskesmas ?>
        </p> -->
      </div>
    </div>
    <hr>
    <div class="row">
      <div class="col-md-9 text-center align-self-center">
        <div class="text-dark pb-3 mt-2">
          <h2></h2>
          <p style="text-align: justify;">
            <?php echo $deskripsi ?>
          </p>
        </div>
        <hr>
        <div class="text-center">
          <button class="btn-more mx-auto text-decoration-none">
          <a href="daftar.php?id=<?php echo $id ?>" >
              <span>Daftar Disini</span></a>
    <svg width="30" height="30" viewBox="0 0 74 74" fill="none" xmlns="http://www.w3.org/2000/svg">
        <circle cx="37" cy="37" r="35.5" stroke="white" stroke-width="3"></circle>
        <path d="M25 35.5C24.1716 35.5 23.5 36.1716 23.5 37C23.5 
        37.8284 24.1716 38.5 25 38.5V35.5ZM49.0607 38.0607C49.6464 
        37.4749 49.6464 36.5251 49.0607 35.9393L39.5147 26.3934C38.9289 
        25.8076 37.9792 25.8076 37.3934 26.3934C36.8076 26.9792 36.8076 
        27.9289 37.3934 28.5147L45.8787 37L37.3934 45.4853C36.8076 46.0711 
        36.8076 47.0208 37.3934 47.6066C37.9792 48.1924 38.9289 48.1924 39.5147 
        47.6066L49.0607 38.0607ZM25 38.5L48 38.5V35.5L25 35.5V38.5Z" fill="white"></path>
    </svg>
          </button>
        </div>
      </div>

      <div class="col-md-3 p-4 align-items-center">
        <div class="mx-auto">
          <hr>
          <h5 class="text-center">Baca Berita Lainnya</h5>
          <?php
          $sql2 = "select * from konten";
          $q2 = mysqli_query($koneksi, $sql2);
          while ($r2 = mysqli_fetch_array($q2)) {
            $id = $r2['id'];
            $judul = $r2['title'];
            ?>
            <ul>
              <li>
                <a href="berita.php?id=<?php echo $id ?>" class="text-decoration-none"> <?php echo $judul ?></a>
              </li>
            </ul>
          <?php } ?>
        </div>
      </div>
    </div>
  </section>
  <!--  -->

  <!-- Footer -->
  <footer class="text-center text-lg-start border border-dark-subtle bg-footer mt-xl-5 pt-4">
    <!-- Grid container -->
    <div class="container p-4">
      <!--Grid row-->
      <div class="row">
        <!--Grid column-->
        <div class="col-sm-5 g-4">
           <h5 class="text-uppercase ">About us</h5>
           <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
          <p class="card-text mt-2" >Sistem layanan puskesmas (SILAP) merupakan sebuah situs yang dapat
            memudahkan pasien untuk mengakses layanan puskesmas dengan skala kecil,
            yang bertujuan untuk memudahkan pengguna yang sekiranya kesulitan dalam mencari informasi - informasi yang
            diberikan oleh puskesmas.</p>
        </div>
        <!--Grid column-->

        <!--Grid column-->
       <div class="col-sm-7 g-4">
        <div class="card-body text-center">
          <h5 class="card-title text-uppercase ">Contact</h5>
           <hr
                class="mb-2 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
          <ul class="mt-4 text-decoration-none">
            <li class="list-group-item">
              <i class="fa fa-envelope"></i>
              <span>silapgroup@gmail.com</span> 
            </li>
          </ul>
        </div>
      </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="input-group mt-4 mb-3">
          <table>
            <td>
              <tr>
                <form action="" method="post">
                  <div class="input-group w-50 mx-auto mb-3">
                    <input type="text" class="form-control" placeholder="Masukkan kritik dan saran anda disini..."
                      id="komentar" name="komentar1" aria-label="Recipient's username" value="<?php echo $komentar ?>"
                      aria-describedby="button-addon2">
                    <button class="btn btn-info text-light" type="submit" name="simpan" id="button-addon2">Kirim</button>
                  </div>
                </form>
              </tr>
            </td>
          </table>
        </div>
        <!--Grid column-->
      </div>
      <!--Grid row-->
    </div>
    <!-- Grid container -->
    <div class="col-12 text-center p-2 text-dark bg-light">
        © 2023 Copyright :
        <a class="text-decoration-none text-info" href="../Sisi Admin/login.php">SILAP</a>
  </div>
  </footer>
  <!-- Akhir Footer -->


  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
    integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
    crossorigin="anonymous"></script>

</body>

</html>