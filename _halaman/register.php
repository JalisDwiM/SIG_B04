<?php
$setTemplate = false;

// var_dump($_POST);
if(isset($_POST['register'])){
    if ($_POST['id_pengguna'] == "") {
		$data['nm_pengguna'] = $_POST['nm_pengguna'];
		$data['kt_sandi'] = password_hash($_POST['kt_sandi'], PASSWORD_DEFAULT);
		$exec = $db->insert("pengguna", $data);
        $session->set("info",'<div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-ban"></i> Sukses!</h4> Registrasi Berhasil!!  Silahkan Login</div>');
} else {
    $session->set("info", '<div class="alert alert-danger alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <h4><i class="icon fa fa-ban"></i> Error!</h4> Proses gagal dilakukan
            </div>');
}
redirect(url('login'));
}


?>
<!DOCTYPE html>
<html>
<head>
    <title>Form Register</title>
    <?php include '_layouts/head.php' ?>
    <link rel="stylesheet" href="<?= templates() ?>plugins/iCheck/square/blue.css">
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
    <a href="#"><b>Register</b>WEBGIS</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
    <p class="login-box-msg">Sign Up to start your session</p>
    <?= $session->pull("info") ?>
    <form method="post">
        <label>Nama Pengguna</label>
        <div class="form-group has-feedback">
        <input type="text" class="form-control" name="nm_pengguna" placeholder="Email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        </div>
        <label>Kata Sandi</label>
        <div class="form-group has-feedback">
        <input type="password" class="form-control" name="kt_sandi" placeholder="Password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <div class="row">
        <!-- /.col -->
        <div class="col-xs-12">
            <button type="submit" name="register" class="btn btn-primary btn-block btn-flat">Sign Up</button>
        </div>
        <!-- /.col -->
        </div>
    </form>
    <p >
        <a href="<?= url('login') ?>" class="text-center">I already have a membership? </a>
    </p>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
</body>
<?php
include '_layouts/javascript.php';
?>
<script src="<?= templates() ?>plugins/iCheck/icheck.min.js"></script>
<script>
$(function() {
    $('input').iCheck({
    checkboxClass: 'icheckbox_square-blue',
    radioClass: 'iradio_square-blue',
    increaseArea: '20%' /* optional */
    });
});
</script>
</html>
