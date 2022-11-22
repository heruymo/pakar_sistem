<!DOCTYPE html>
<html>

<head>
  <title></title>
</head>

<body>
  <div class="container-fluid">
    <div class="animated fadeIn">
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header">
              <i class="fa fa-edit"></i>FORM TAMBAH DATA GEJALA
            </div>
            <div class="card-body">
              <form class="form-horizontal" action="create" method="post">
                <div class="form-group">
                  <label class="col-form-label" for="appendedInput">NAMA GEJALA</label>
                  <div class="controls">
                    <div class="input-group">
                      <input type="text" class="form-control" id="appendedInput" name="nama_gejala" required>
                      <div class="input-group-append">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-form-label" for="appendedInput">TINGKAT KEPERCAYAAN</label>
                  <div class="controls">
                    <div class="input-group">
                      <input type="text" class="form-control" id="appendedInput" name="cf" required>
                      <div class="input-group-append">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-form-label" for="appendedInput">JAWABAB YA</label>
                  <div class="controls">
                    <div class="input-group">
                      <select class="form-control" id="appendedInput" name="jawaban_ya">
                        <?php foreach ($rows2 as $row2) { ?>
                          <option value='<?php echo $row2->id_gejala; ?>'><?php echo $row2->id_gejala; ?></option>
                        <?php } ?>
                      </select>
                      <div class="input-group-append">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-form-label" for="appendedInput">jawaban TIDAK</label>
                  <div class="input-group">
                    <select class="form-control" id="appendedInput" name="jawaban_tidak">
                      <?php foreach ($rows2 as $row2) { ?>
                        <option value='<?php echo $row2->id_gejala; ?>'><?php echo $row2->id_gejala; ?></option>
                      <?php } ?>
                    </select>
                    <div class="input-group-append">
                    </div>
                  </div>
                </div>
                <div class="form-actions">
                  <button class="btn btn-primary" type="submit" name="btnSubmit">Simpan</button>
                  <button class="btn btn-secondary" type="button" onclick=self.history.back()>Batal</button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <!-- /.col-->
      </div>
      <!-- /.row-->
    </div>
  </div>
</body>

</html>