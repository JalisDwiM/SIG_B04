<?php
  $title="Beranda";
  $judul=$title;
?>
<?=content_open('Halaman Beranda')?>
    <?=$session->pull("info")?>
    <h4>Selamat datang di Webgisku</h4>
    <h4>Webgisku merupakan website penyedia informasi mengenai pemetaan SPBU di seluruh indonesia</h4>
<?=content_close()?>
