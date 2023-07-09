<?php
// Memasukkan file config agar terkoneksi dengan database
include "../config.php";

// Layanan 1
// mengambil data pengunjung
$data1 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 1 AND puskesmas = 'Puskesmas Gedongtengen' AND YEAR (tgl_daftar)=2023");
$jumlah1 = mysqli_num_rows($data1);

// mengambil data pengunjung
$data11 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 2 AND puskesmas = 'Puskesmas Gedongtengen' AND YEAR (tgl_daftar)=2023");
$jumlah11 = mysqli_num_rows($data11);

// mengambil data pengunjung
$data111 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 3 AND puskesmas = 'Puskesmas Gedongtengen' AND YEAR (tgl_daftar)=2023");
$jumlah111 = mysqli_num_rows($data111);

// mengambil data pengunjung
$data1111 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 4 AND puskesmas = 'Puskesmas Gedongtengen' AND YEAR (tgl_daftar)=2023");
$jumlah1111 = mysqli_num_rows($data1111);

// Layanan 2
// mengambil data pengunjung
$data2 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 1 AND puskesmas = 'Puskesmas Gondomanan' AND YEAR (tgl_daftar)=2023");
$jumlah2 = mysqli_num_rows($data2);

// mengambil data pengunjung
$data22 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 2 AND puskesmas = 'Puskesmas Gondomanan' AND YEAR (tgl_daftar)=2023");
$jumlah22 = mysqli_num_rows($data22);

// mengambil data pengunjung
$data222 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 3 AND puskesmas = 'Puskesmas Gondomanan' AND YEAR (tgl_daftar)=2023");
$jumlah222 = mysqli_num_rows($data222);

// mengambil data pengunjung
$data2222 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 4 AND puskesmas = 'Puskesmas Gondomanan' AND YEAR (tgl_daftar)=2023");
$jumlah2222 = mysqli_num_rows($data2222);

// Layanan 3
// mengambil data pengunjung
$data3 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 1 AND puskesmas = 'Puskesmas Kotagede 2' AND YEAR (tgl_daftar)=2023");
$jumlah3 = mysqli_num_rows($data3);

// mengambil data pengunjung
$data33 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 2 AND puskesmas = 'Puskesmas Kotagede 2' AND YEAR (tgl_daftar)=2023");
$jumlah33 = mysqli_num_rows($data33);

// mengambil data pengunjung
$data333 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 3 AND puskesmas = 'Puskesmas Kotagede 2' AND YEAR (tgl_daftar)=2023");
$jumlah333 = mysqli_num_rows($data333);

// mengambil data pengunjung
$data3333 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 4 AND puskesmas = 'Puskesmas Kotagede 2' AND YEAR (tgl_daftar)=2023");
$jumlah3333 = mysqli_num_rows($data3333);

// Layanan 4
// mengambil data pengunjung
$data4 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 1 AND puskesmas = 'Puskesmas Tegalrejo' AND YEAR (tgl_daftar)=2023");
$jumlah4 = mysqli_num_rows($data4);

// mengambil data pengunjung
$data44 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 2 AND puskesmas = 'Puskesmas Tegalrejo' AND YEAR (tgl_daftar)=2023");
$jumlah44 = mysqli_num_rows($data44);

// mengambil data pengunjung
$data444 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 3 AND puskesmas = 'Puskesmas Tegalrejo' AND YEAR (tgl_daftar)=2023");
$jumlah444 = mysqli_num_rows($data444);

// mengambil data pengunjung
$data4444 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE id_layanan = 4 AND puskesmas = 'Puskesmas Tegalrejo' AND YEAR (tgl_daftar)=2023");
$jumlah4444 = mysqli_num_rows($data4444);

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src='https://cdn.plot.ly/plotly-2.24.1.min.js'></script>
  <title>Document</title>
</head>
<body>
  <div>
    <canvas id="myChart"></canvas>
  </div>

  <script>
    var ctx = document.getElementById("myChart").getContext("2d");

    var data = {
      labels: [ 
              'Puskesmas Gedongtengen',
              'Puskesmas Gondomanan',
              'Puskesmas Kotagede 2',
              'Puskesmas Tegalrejo'],
      datasets: [{
        label: "Vaksinasi",
        backgroundColor: 'rgb(255, 99, 132)',
        data: [
          <?php echo $jumlah1 ?>,
          <?php echo $jumlah2 ?>,
          <?php echo $jumlah3 ?>,
          <?php echo $jumlah4 ?>]
      }, {
        label: "Imunisasi",
        backgroundColor: 'rgb(54, 162, 235)',
        data: [          
          <?php echo $jumlah11 ?>,
          <?php echo $jumlah22 ?>,
          <?php echo $jumlah33 ?>,
          <?php echo $jumlah44 ?>]
      }, {
        label: "Kesehatan Gizi",
        backgroundColor: 'rgb(255, 205, 86)',
        data: [
          <?php echo $jumlah111 ?>,
          <?php echo $jumlah222 ?>,
          <?php echo $jumlah333 ?>,
          <?php echo $jumlah444 ?>]
      }, {
        label: "Kesehatan Rutin",
        backgroundColor: 'rgb(38, 191, 79)',
        data: [
          <?php echo $jumlah1111 ?>,
          <?php echo $jumlah2222 ?>,
          <?php echo $jumlah3333 ?>,
          <?php echo $jumlah4444 ?>]
      }]
    };

    var myBarChart = new Chart(ctx, {
      type: 'bar',
      data: data,
      options: {
        barValueSpacing: 20,
        scales: {
          yAxes: [{
            ticks: {
              min: 0,
            }
          }]
        }
      }
    });

  </script>

</body>
</html>
