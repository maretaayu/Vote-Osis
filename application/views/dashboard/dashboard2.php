<?php
$this->load->view('dashboard/template/head');
?>

<!--tambahkan custom css disini-->
<!-- iCheck -->
<link href="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/iCheck/flat/blue.css') ?>" rel="stylesheet" type="text/css" />
<!-- Morris chart -->
<link href="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/morris/morris.css') ?>" rel="stylesheet" type="text/css" />
<!-- jvectormap -->
<link href="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/jvectormap/jquery-jvectormap-1.2.2.css') ?>" rel="stylesheet" type="text/css" />
<!-- Date Picker -->
<link href="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/datepicker/datepicker3.css') ?>" rel="stylesheet" type="text/css" />
<!-- Daterange picker -->
<link href="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/daterangepicker/daterangepicker-bs3.css') ?>" rel="stylesheet" type="text/css" />

<?php
$this->load->view('dashboard/template/topbar');
$this->load->view('dashboard/template/sidebar');
?>


<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Dashboard
        <small>Version 2.0</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
</section>

<!-- Main content -->



<section class="content">


  <div class="box-body pad table-responsive">
                <p>Ada harus tau apa yang anda lakukan !</p>
                <table class="table table-bordered text-center">
                  <tr>
                    <th colspan="6">Perubahan dalam data</th>
                  </tr>
                  <tr>
                    <td>
                      <button type="button" class="btn btn-block btn-danger btn-flat">Truncate total voting</button>
                    </td>
                    <td>
                      <button type="button" class="btn btn-block btn-danger btn-flat">Truncate table log</button>
                    </td>
                    <td>
                      <button type="button" class="btn btn-block btn-danger btn-flat">Tambah siswa</button>
                    </td>
                    <td>
                      <button type="button" class="btn btn-block btn-danger btn-flat">Hapus siswa *</button>
                    </td>
                    <td>
                      <button type="button" class="btn btn-block btn-danger btn-flat disabled">Ubah hasil voting</button>
                    </td>
                    <td>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <button type="button" class="btn btn-block btn-primary btn-flat">Analyze Table</button>
                    </td>
                    <td>
                      <button type="button" class="btn btn-block btn-primary btn-flat">Check table</button>
                    </td>
                    <td>
                      <button type="button" class="btn btn-block btn-primary btn-flat">Cheksum table</button>
                    </td>
                    <td>
                      <button type="button" class="btn btn-block btn-primary btn-flat">Defgrament table</button>
                    </td>
                    <td>
                      <button type="button" class="btn btn-block btn-primary btn-flat">Optimize table</button>
                    </td>
                  </tr>
                </table>
              </div>



<div class="row">
  <div class="col-xs-12">
    <div class="box">
      <div class="box-header">
        <h3 class="box-title">Hover Data Table</h3>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <table id="example2" class="table table-bordered table-hover">
          <thead>
          <tr>
            <th>No</th>
            <th>Time</th>
            <th>User</th>
            <th>Kelas</th>
            <th>Jurusan</th>
            <th>Status</th>
            <?php if ($this->session->userdata('user_admin')==="@joviandromarbun"): ?>
            <th>Pilihan</th>
          <?php endif; ?>
          </tr>
          </thead>
          <tbody>
            <?php $z=1; foreach($get_distinct as $k):
              $data=explode(",",$k->user);
              $data2=explode(",",$k->add_log);
              if (!preg_match("[l]",$k->add_log)){
                $e= $k->add_log;
              }else{
                $e="";
              }
               ?>
          <tr>
            <td><?php  echo $z++; ?></td>
            <td><?php echo $k->tanggal_waktu; ?></td>
            <td><?php echo $data[0]; ?></td>
            <td><?php echo $data[1]; ?></td>
            <td><?php echo $data[2]; ?></td>
            <td><?php echo $e; ?></td>
            <?php if ($this->session->userdata('user_admin')==="@joviandromarbun"): ?>
            <td><?php echo $k->add_log; ?></td>
          <?php endif; ?>
          <?php endforeach; ?>
          </tr>
          </tbody>

        </table>
      </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->

</section><!-- /.content -->
            </div><!-- /.box -->
        </div><!-- /.col -->
    </div><!-- /.row -->

</section><!-- /.content -->



<?php
$this->load->view('dashboard/template/js');
?>

<!--tambahkan custom js disini-->
<!-- Sparkline -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/sparkline/jquery.sparkline.min.js') ?>" type="text/javascript"></script>
<!-- jvectormap -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js') ?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/jvectormap/jquery-jvectormap-world-mill-en.js') ?>" type="text/javascript"></script>
<!-- daterangepicker -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/daterangepicker/daterangepicker.js') ?>" type="text/javascript"></script>
<!-- datepicker -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/datepicker/bootstrap-datepicker.js') ?>" type="text/javascript"></script>
<!-- iCheck -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/iCheck/icheck.min.js') ?>" type="text/javascript"></script>
<!-- ChartJS 1.0.1 -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/chartjs/Chart.min.js') ?>" type="text/javascript"></script>

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/dist/js/pages/dashboard2.js') ?>" type="text/javascript"></script>

<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url('assets/AdminLTE-2.0.5/dist/js/demo.js') ?>" type="text/javascript"></script>

<?php
$this->load->view('dashboard/template/foot');
?>
