<!DOCTYPE html>
<html>

<head>
  <title></title>
</head>

<body>
  <main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
      <li class="breadcrumb-item" align="center"><a href="#">Sistem Pakar Diagnosa Penyakit Tanaman Karet klon pb 260</a></li>
    </ol>
    <div class="container-fluid">
      <div class="animated fadeIn">
        <div class="row">
          <div class="col-sm-6 col-lg-3">
            <div class="card text-white bg-primary">
              <div class="card-body pb-0">
                <div class="btn-group float-right">
                </div>
                <div class="text-value"><?php echo $model->jumlah_penyakit; ?></div>
                <div>Data Penyakit</div>
              </div>
            </div>
          </div>
          <!-- /.col-->
          <div class="col-sm-6 col-lg-3">
            <div class="card text-white bg-info">
              <div class="card-body pb-0">
                <div class="text-value"><?php echo $model->jumlah_gejala; ?></div>
                <div>Data Gejala</div>
              </div>
            </div>
          </div>
          <!-- /.col-->
          <div class="col-sm-6 col-lg-3">
            <div class="card text-white bg-warning">
              <div class="card-body pb-0">
                <div class="btn-group float-right">
                </div>
                <div class="text-value"><?php echo $model->jumlah_pengetahuan; ?></div>
                <div>Data Pengetahuan</div>
              </div>
            </div>
          </div>
          <!-- /.col-->
          <div class="col-sm-6 col-lg-3">
            <div class="card text-white bg-danger">
              <div class="card-body pb-0">
                <div class="btn-group float-right">
                </div>
                <div class="text-value"><?php echo $model->jumlah_pengguna; ?></div>
                <div>Data Pengguna</div>
              </div>
            </div>
          </div>
          <!-- /.col-->
        </div>
        <!-- /.row-->
        <div class="card">
          <div class="card-body">
            <div class="row">
              <div style="height: 350px;">
                <h1 class="text-center text-monospace wy-text-large mt-lg-5"><b> SISTEM PAKAR</b></h1>
                <h3 class="text-center text-monospace "><b>Selamat datang di Sistem Pakar Penyakit Tanaman Karet Klon Pb260
                    dengan Sistem Pakar ini dapat membantu petani dalam mendiagnosa penyakit pada tanaman karet klon pb260</b>.
                </h3>

                <div class="row">
                </div>

              </div>
              <!-- /.row-->

            </div>

          </div>


        </div>
      </div>
  </main>
</body>

</html>