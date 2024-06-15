<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Lora:700|Montserrat:200,400,600|Pacifico&display=swap" rel="stylesheet">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">

  <!-- My CSS -->
  <link rel="stylesheet" type="text/css" href="<?= base_url('/assets/css/style.css'); ?>">

  <title><?= $title; ?></title>
</head>

<body>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <div>
        <a href="<?= base_url('home'); ?>"> <img src=<?= base_url("assets/img/senja.png"); ?> alt="logo" style="width: 190px; height: 100px; margin: 10px;" href="<?= base_url('home'); ?>"></a>
      </div>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
        <div class="navbar-nav">

          <?php if ($title == 'Coffee Shop') : ?>
            <a class="nav-item nav-link active mr-3" href="<?= base_url('home'); ?>">Home</a>
          <?php else : ?>
            <a class="nav-item nav-link mr-3" href="<?= base_url('home'); ?>">Home</a>
          <?php endif; ?>


          <?php if ($title == 'Menu') : ?>
            <a class="nav-item nav-link active mr-3" href="<?= base_url('menu'); ?>">Menu</a>
          <?php else : ?>
            <a class="nav-item nav-link mr-3" href="<?= base_url('menu'); ?>">Menu</a>
          <?php endif; ?>

          <?php if ($title == 'Chat') : ?>
            <a class="nav-item nav-link active mr-3" href="<?= base_url('Message'); ?>">Chat</a>
          <?php else : ?>
            <a class="nav-item nav-link mr-3" href="<?= base_url('Message'); ?>">Chat</a>
          <?php endif; ?>

          <?php if ($this->session->userdata('role_id') == '2') : ?>
            <?php if ($title == 'Keranjang') : ?>
              <a class="nav-item nav-link active far fa-shopping-cart" href="<?= base_url('pesanan'); ?>">Keranjang (<span><?= $notif_pesanan; ?></span>)</a>
            <?php else : ?>
              <a class="nav-item nav-link" href="<?= base_url('pesanan'); ?>">Keranjang (<span><?= $notif_pesanan; ?></span>)</a>
            <?php endif; ?>
          <?php endif; ?>

          <?php if ($title == 'Feedback') : ?>
            <a class="nav-item nav-link active mr-3" href="<?= base_url('feedback'); ?>">Feedback</a>
          <?php else : ?>
            <a class="nav-item nav-link mr-3" href="<?= base_url('feedback'); ?>">Feedback</a>
          <?php endif; ?>


          <!-- Nav Item - Profil -->
          <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="mr-3 d-none d-lg-inline text-gray-40 small">Hallo, <?= $this->session->userdata('username'); ?></span>
              <img class="img-profile rounded-circle mr-1" width="28px" src="<?= base_url(); ?>assets/img/undraw_profile.svg">
            </a>
            <!-- Dropdown - Profil Logout-->
            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
              <a href="<?= base_url('auth/logout'); ?>" class="dropdown-item" data-toggle="modal" data-target="#logoutModal">
                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-3 text-gray-400"></i>
                Logout
              </a>
            </div>
          </li>

        </div>
      </div>
    </div>
  </nav>
  <!-- End Navbar -->

  <div id="logoutModal" class="modal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header bg-dark">
          <h5 class="modal-title text-white">Logout</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body text-center mt-2">
          <p>Kamu yakin mau akan keluar?</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
          <a href="<?= base_url('auth/logout/'); ?>" class="btn btn-pesan">Logout</a>
        </div>
      </div>
    </div>
  </div>