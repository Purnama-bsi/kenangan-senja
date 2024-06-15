<!-- Carousel -->
<div class="shadow p-1 mb-3 bg-dark">
  <div id="carouselExampleFade" class="carousel slide carousel-fade bg-light" data-ride="carousel">
    <div class="container">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <div class="row d-flex justify-content-center">
            <div class="col-lg-8">

              <?php if ($this->session->userdata('role_id') == '1') : ?>
                <h4>Hallo, <br>Administrator<br>
                  <h6>Jalan Cut Meutia No.1, Bekasi. <br>Buka Setiap Hari <br>Pukul: 11.00 - 23.00 WIB</h6><br>
                  <a href="<?= base_url('auth/logout'); ?>" class="btn btn-order">Logout <i class="fas fa-sign-out-alt"></i></a>
                <?php endif; ?>

                <?php if ($this->session->userdata('role_id') == '2') : ?>
                  <h4>Coffee <br>And <br>Party</h4><br>
                  <h6>Jalan Cut Meutia No.1, Bekasi. <br>Buka Setiap Hari <br>Pukul: 11.00 - 23.00 WIB</h6><br>
                  <a href="<?= base_url('menu'); ?>" class="btn btn-order">Order Now <i class="fas fa-arrow-right ml-1"></i></a><br>


                <?php endif; ?>
            </div>

            <div class="d-flex justify-content-end">
              <div class="image-bg">
                <img src="<?= base_url('/assets/img/table.PNG'); ?>">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End Carousel -->