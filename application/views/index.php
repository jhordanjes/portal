<?php 
$this->load->view("portal_cabecalho");
?>


        <div class="container" id="conteudo">
          <h3 class="text-right text-warning">Manaus, Amazonas</h3>
          <hr>
          <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
              <li data-target="#carousel-example-generic" data-slide-to="1"></li>
              <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <div class="carousel-inner" role="listbox">
              <div class="item active">
                <img src="<?php echo base_url ("extras/img/slide1.png");?>" alt="...">
                <div class="carousel-caption">
                  
                </div>
              </div>
              <div class="item">
                <img src="<?php echo base_url ("extras/img/slide2.png");?>" alt="...">
                <div class="carousel-caption">
                  <h3></h3>
                </div>
              </div>
              <div class="item">
                <img src="<?php echo base_url ("extras/img/slide3.png");?>" alt="...">
                <div class="carousel-caption"></div>
              </div>
            </div>
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
          <hr>

          <!-- Últimas Notícias -->   
          <h3 class="text-warning"><span class="glyphicon glyphicon-chevron-down"></span> Últimas Notícias</h3>
          <?php foreach ($noticias as $noticia): ?>
            <div class="row">
              <div class="col-md-4 col-xs-12">
                <img src="<?php echo base_url ($noticia->img);?>" id="img-noticias" alt="..." class="img-thumbnail">
              </div>
              <div class="col-md-6 col-xs-12">
                <a href="<?= base_url ('index.php/Welcome/portal_visualizar/'.$noticia->id) ?>"> <h3 class="text-warning"><?php echo $noticia->titulo; ?></h3></a>
                <p><?php echo $noticia->subtitulo; ?></p>
              </div>
            </div>
            <hr>
          <?php endforeach ?>
          
        </div>
        <br>
        <p class="text-center">Copyright © 2018 Portal Informei.</p>
    <script src="<?php echo base_url ("extras/js/jquery.min.js");?>"></script>
    <script src="<?php echo base_url ("extras/js/bootstrap.min.js");?>"></script>
  </body>
</html>