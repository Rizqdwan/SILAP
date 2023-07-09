<!-- php -->
<?php
include 'config.php';

// Nama variabel penampung
$judul = '';
$deskripsi = '';
$gambar = '';
$komentar = '';
$berhasil = '';
$gagal = '';
$gagal_Isian = '';


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
<!-- php -->

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Home Page | Silap</title>
  <link rel="icon" href="img/SILAP.png" type="image/x-icon">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" 
  rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" 
  crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css" />
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body class="">
  <!-- Navbar -->
  <section class="bg">
  <nav class="navbar navbar-expand-lg navbar-dark shadow-5-strong">
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
          <li class="nav-item ">
            <a class="nav-link px-lg-3 mx-lg-3 " href="#layanan">Layanan</a>
          </li>
          <li class="nav-item">
            <a class="nav-link px-lg-3 mx-lg-3" href="lokasi.php">Lokasi</a>
          </li>
          <li class="nav-item">
            <a class="nav-link px-lg-3 mx-lg-3" href="jadwal.php">Jadwal</a>
          </li>
          <li class="nav-item">
            <a class="nav-link px-lg-3 mx-lg-3" href="#berita">Berita</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- Akhir Navbar -->

  <!-- Baru -->
  <section class="container-fluid navi">
    <div class="row">
      <div class="col-md-6 text-center align-self-center">
        <div class="text-dark">
          <h2 class="caption-quote">We Care Of Your<span class="caption-quote2"> Healty</span></h2>
          <p class="desc-quote">
            Solusi layanan Puskesmas berbasis online, yang dapat membantu kamu
            untuk menemukan berbagai dan layanan puskesmas secara
            cepat dan mudah.
          </p>
        </div>
      </div>
      <div class="col-md-6 text-center align-items-center pt-3">
        <div class="mx-auto">
          <img class="w-75" src="img/Lovepik_com-401772836-medical-health.png" alt="doctor" />
        </div>
      </div>
    </div>
  </section>
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
    <path fill="#ffff" fill-opacity="1"
    d="M0,160L80,133.3C160,107,320,53,480,64C640,75,800,149,960,181.3C1120,213,1280,
    203,1360,197.3L1440,192L1440,320L1360,320C1280,320,1120,320,960,320C800,320,640,320,480,320C320,320,160,320,80,320L0,320Z"></path></svg>
  </section>
  <!-- Akhir Baru -->

<!-- Content -->
<h3 class="container title-layanan text-center md-10" id="layanan">Layanan Khusus</h3>
   <div class="container text-center position-relative p-3 mt-2 mb-5 ">
        <div class="row d-flex justify-content-center">
            <div class="col-4 hover">
                <div class="card p-1 shadow-sm bg-body  ">
                    <div class="card-body">
                    <a href="#berita"><img class="content-img rounded mx-auto d-block img-fluid" src="img/IconPendaftaran.png" alt="" /></a>
                        <h5 class="card-title"><a href="#berita" class="fs-5 fw-semibold text-decoration-none text-dark ho">Pendaftaran</a></h5>
                        <p class="card-text">Mendaftar ke Layanan Puskesmas secara online tanpa perlu antri dimana saja</p>
                    </div>
                </div>
            </div>
            <div class="col-4 hover">
                <div class="card p-1 shadow-sm bg-body ">
                    <div class="card-body">
          <img class="content-img rounded mx-auto d-block img-fluid" src="img/Searching for location with magnifying glass.png" alt="" />
                        <h5 class="card-title"><a href="lokasi.php" class="fs-5 fw-semibold text-decoration-none text-dark ho">Layanan Lokasi</a></h5>
                        <p class="card-text">Cek Lokasi Puskesmas terdekat secara online dan mudah.</p>
                    </div>
                </div>
            </div>
            <div class="col-4 hover">
                <div class="card p-1 shadow-sm bg-body ">
                    <div class="card-body">
          <img class="content-img rounded-4 mx-auto img-fluid" src="img/IconJadwal-removebg-preview.png" alt="" />
                        <h5 class="card-title"><a href="jadwal.php" class="fs-5 fw-semibold text-decoration-none text-dark ho">Jadwal</a></h5>
                        <p class="card-text"> Cek penjadwalan pelayanan serta waktu Puskesmas secara Online</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
  <!-- End Content -->

  <!-- Berita -->
  <div class="container pt-4 pb-4">
    <div class="container-fluid col-12">
      <h3 class="title-layanan" id="berita">Lihat Berita</h3>
    </div>
    <div class="row text-center">
      <?php
      $sql2 = "select * from konten";
      $q2 = mysqli_query($koneksi, $sql2);
      while ($r2 = mysqli_fetch_array($q2)) {
        $id = $r2['id'];
        $judul = $r2['title'];
        $deskripsi = $r2['deskripsi'];
        $gambar = $r2['gambar'];
        ?>
        <div class="col-sm-3 g-4 " data-aos="fade-up" data-aos-duration="1000">
          <div class="card h-100 rounded-4 ">
            <img class=" w-70 card-img-top" src="../Sisi Admin/uploadIMG/<?php echo $gambar ?>" />
            <div class="card-body">
              <h5 class="card-title">
                <?php echo $judul ?>
              </h5>
              <p class="card-text">
                <?php echo substr($deskripsi, 0, 20) ?>
                ...
              </p>
              <button class="click-more mx-auto text-decoration-none">
              <a href="berita.php?id=<?php echo $id ?>" >Read More</a>
              </button>

            </div>
          </div>
        </div>
        <?php
      }
      ?>
    </div>
  </div>
  <!-- End berita -->

  <!-- </footer> -->
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

  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script src="https://cdn.lordicon.com/bhenfmcm.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
    crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="js/animation.js"></script>
</body>

</html>