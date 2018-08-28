<?php 
$this->load->view("portal_cabecalho");
?>

    <div class="container" id="conteudo">
		  <h2 class="text-warning"><span class="glyphicon glyphicon-globe"></span> Todas as Notícias</h2>
    	<hr>
		  <?php if ($this->session->flashdata('sucess')){?>
        <div class="alert alert-success" role="alert">
          <p><?php echo $this->session->flashdata('sucess'); ?></p>
        </div>
      <?php } ?>

		  <?php foreach ($noticias as $noticia): ?>
        <div class="row">
          <div class="col-md-4 col-xs-12">
            <img src="<?php echo base_url ($noticia->img);?>" id="img-noticias" alt="..." class="img-thumbnail">
          </div>
          <div class="col-md-6 col-xs-12">
            <a href="<?= base_url ('index.php/Welcome/portal_visualizar/'.$noticia->id) ?>"> <h3 class="text-warning"><?php echo $noticia->titulo; ?></h3></a>
            <p><?php echo $noticia->subtitulo; ?></p>
          </div>
          <div class="col-md-2 col-xs-12">
				    <a href="<?= base_url ('index.php/Welcome/remover/'.$noticia->id) ?>" class="btn btn-warning" onclick="return confirm('Deseja realmente excluir o usuário?');"><span class="glyphicon glyphicon-trash"></span></a>
            <a href="<?= base_url ('index.php/Welcome/portal_editar/'.$noticia->id) ?>" class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span></a>
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