<?php
// Memasukkan file config agar terkoneksi dengan database
include "../config.php";

// mengambil data pengunjung
$data1 = mysqli_query($koneksi, "SELECT id FROM `pasien` WHERE MONTH (tgl_daftar) = 01 AND YEAR (tgl_daftar) = 2023");
$jumlah = mysqli_num_rows($data1);

$data2 = mysqli_query($koneksi, "SELECT id FROM `pasien` WHERE MONTH (tgl_daftar) = 02 AND YEAR (tgl_daftar) = 2023");
$jumlah2 = mysqli_num_rows($data2);

$data3 = mysqli_query($koneksi, "SELECT id FROM `pasien` WHERE MONTH (tgl_daftar) = 03 AND YEAR (tgl_daftar) = 2023");
$jumlah3 = mysqli_num_rows($data3);

$data4 = mysqli_query($koneksi, "SELECT id FROM `pasien` WHERE MONTH (tgl_daftar) = 04 AND YEAR (tgl_daftar) = 2023");
$jumlah4 = mysqli_num_rows($data4);

$data5 = mysqli_query($koneksi, "SELECT id FROM `pasien` WHERE MONTH (tgl_daftar) = 05 AND YEAR (tgl_daftar) = 2023");
$jumlah5 = mysqli_num_rows($data5);

$data6 = mysqli_query($koneksi, "SELECT id FROM `pasien` WHERE MONTH (tgl_daftar) = 06 AND YEAR (tgl_daftar) = 2023");
$jumlah6 = mysqli_num_rows($data6);

$data7 = mysqli_query($koneksi, "SELECT id FROM `pasien` WHERE MONTH (tgl_daftar) = 07 AND YEAR (tgl_daftar) = 2023");
$jumlah7 = mysqli_num_rows($data7);

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <title>Document</title>
</head>

<body>
  <div>
    <canvas id="myLineChart"></canvas>
  </div>

  <script>
    const ctx = document.getElementById('myLineChart');
    new Chart(ctx, {
      type: 'line',
      data: {
        labels: ["Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli"],
        datasets: [{
          label: 'Total Pengunjung ',
          data: [
            <?php
            echo $jumlah
              ?>,
            <?php
            echo $jumlah2
              ?>,
            <?php
            echo $jumlah3
              ?>,
            <?php
            echo $jumlah4
              ?>,
            <?php
            echo $jumlah5
              ?>,
            <?php
            echo $jumlah6
              ?>,
            <?php
            echo $jumlah7
              ?>],
          fill: false,
          borderColor: 'rgb(75, 192, 192)',
          tension: 0.1
        }]
      },
      options: {
        scales: {
          y: {
            beginAtZero: true
          }
        }
      }
    });
  </script>

</body>

</html>