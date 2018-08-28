<?php 
$this->load->view("portal_cabecalho");
?>
		<div class="container" id="conteudo">
			<h3 class="text-warning"><span class="glyphicon glyphicon-chevron-down"></span> Notícias Encontradas</h3>
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
          <br>
          <p class="text-center">Copyright © 2018 Portal Informei.</p>
        </div>

		<script src="<?php echo base_url ("extras/js/jquery.min.js");?>"></script>
		<script src="<?php echo base_url ("extras/js/bootstrap.min.js");?>"></script>
	</body>
</html>