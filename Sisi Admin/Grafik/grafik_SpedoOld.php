<?php
// Memasukkan file config agar terkoneksi dengan database
include "../config.php";

// mengambil data pengunjung
$data1 = mysqli_query($koneksi, "SELECT * FROM pasien WHERE YEAR (tgl_daftar) = '2022'");
$jumlah = mysqli_num_rows($data1);

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> -->
  <title>Document</title>
</head>
<body>
  <div>
    <canvas id="canvas"></canvas>
  </div>
  <script src="../js/Chart.js"></script>
  <script src="../js/Gauge.js"></script>
  <script type="text/javascript">
	var ctx = document.getElementById("canvas").getContext("2d");
	new Chart(ctx, {
		type: "tsgauge",
		data: {
			datasets: [{
				backgroundColor: ['#ff0000', '#ffff00', '#008000'],
				borderWidth: 0,
				gaugeData: {
					value: <?php echo $jumlah ?>,
					valueColor: "#ff7143"
				},
				gaugeLimits: [0, 200, 350, 500]
			}]
		},
		options: {
			events: [],
			showMarkers: true
		}
	});
  </script>

</body>
</html>
