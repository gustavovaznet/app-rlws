<?php  
  $action = 'productAvailable';
  require 'product_controller.php';
?>
<!doctype html>
<html lang="pt-br">
  <head>
    <!-- Meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../../css/custom.css">
    <!-- FONTS AWESOME -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- FAV ICON -->
    <link rel="icon" href="../../img/fav.png">
    <!-- FONT GOOGLE -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet"> 
    <title>Sistema Web</title>     
  </head>
  <body>
    <!-- HEADER -->
    <header>
      <!-- NAVBAR -->
      <?php
        include 'navbar.php';
      ?>            
    </header>   
    <!-- MAIN SECTION -->
    <section class="d-flex justify-content-center align-items-center">
      <div class="container margin1">
        <div class="row">
          <div class="col-md-12">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="../../main.php">Principal</a></li>
                <li class="breadcrumb-item active"><a href="product_available.php">Produtos Disponíveis em Estoque</a></li>
              </ol>
            </nav>
          </div>
          <div class="col-md-12">
            <div class="container page">
              <div class="row">
                <div class="col">
                  <!-- AVAILABLE PRODUCTS SECTION -->
                  <h4>Produtos Disponíveis em Estoque</h4>
                  <hr />
                  <!-- FOREACH AVAILABLE PRODUCTS LIST -->
                  <?php foreach ($products as $index => $product) { ?>
                    <div class="row mb-3 d-flex align-items-center tarefa">
                      <div class="col-sm-12" id="product_<?= $product->id ?>">
                        <h5><?= $product->product ?> | <?= $product->amount ?> unidade(s) | <?= $product->value ?> | <?= $product->notes ?></h5>
                      </div>                            
                    </div>
                  <?php } ?>
                </div>
              </div>
            </div>                                                               
          </div>
        </div>
      </div>
    </section>    
    <!-- jQuery  -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <!-- Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>
