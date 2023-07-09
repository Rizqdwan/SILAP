<?php
// Memasukkan file config agar terkoneksi dengan database
include "../config.php";

// mengambil data pengunjung
$data1 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE puskesmas lIKE '%Puskesmas Gedongtengen%' AND YEAR (tgl_daftar) = 2023");
$jumlah = mysqli_num_rows($data1);

// mengambil data pengunjung
$data2 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE puskesmas lIKE '%Puskesmas Gondomanan%' AND YEAR (tgl_daftar) = 2023");
$jumlah2 = mysqli_num_rows($data2);

// mengambil data pengunjung
$data3 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE puskesmas lIKE '%Puskesmas Kotagede 2%' AND YEAR (tgl_daftar) = 2023");
$jumlah3 = mysqli_num_rows($data3);

// mengambil data pengunjung
$data4 = mysqli_query($koneksi, "SELECT * FROM `pasien` WHERE puskesmas lIKE '%Puskesmas Tegalrejo%' AND YEAR (tgl_daftar) = 2023");
$jumlah4 = mysqli_num_rows($data4);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <title>Pie Chart</title>
</head>
<body>
  <div>
    <canvas id="myChart"></canvas>
  </div>

  <!-- js pie -->
  <script>
      const data = {
          labels: [
              'Puskesmas Gedongtengen',
              'Puskesmas Gondomanan',
              'Puskesmas Kotagede 2',
              'Puskesmas Tegalrejo'
          ],
          datasets: [{
              label: 'Total Pendaftar',
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
              ?>
                ],
              backgroundColor: [
              'rgb(255, 99, 132)',
              'rgb(54, 162, 235)',
              'rgb(255, 205, 86)',
              'rgb(38, 191, 79)'
              ],
              hoverOffset: 4
          }]
      };

      const config = {
          type: 'pie',
          data: data,
      };

      var myChart = new Chart(
          document.getElementById('myChart'),
          config
      );
  </script>

</body>
</html>
