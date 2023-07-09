<?php
// Memasukkan file config agar terkoneksi dengan database
include "../config.php";

// mengambil data pengunjung
$data1 = mysqli_query($koneksi, "SELECT * FROM `pasien` where id_Layanan = 3");
$jumlah = mysqli_num_rows($data1);

// mengambil data pengunjung
$data2 = mysqli_query($koneksi, "SELECT * FROM `pasien` where id_Layanan = 4");
$jumlah2 = mysqli_num_rows($data2);

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
    <canvas id="myChart"></canvas>
  </div>

  <script>
    const ctx = document.getElementById('myChart');

new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ['Cek Kesehatan Gizi (Puskesmas Kotagede 2)', 'Cek Kesehatan Rutin (Puskesmas Tegalrejo)'],
    datasets: [{
      label: 'Jumlah Pendaftar',
      data: [
        <?php echo $jumlah ?>, 
        <?php echo $jumlah2 ?>],
      backgroundColor: [
      'rgba(255, 99, 132, 0.2)',
      'rgba(255, 159, 64, 0.2)'
    ],
    borderColor: [
      'rgb(255, 99, 132)',
      'rgb(255, 159, 64)'
    ],
    borderWidth: 1
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
