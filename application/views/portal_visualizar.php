<?php 
$this->load->view("portal_cabecalho");
?>

		<div class="container" id="conteudo">
			<div class="row">
				
				<div class="col-md-1 col-xs-12"></div>
				<div class="col-md-10 col-xs-12">
					<?php foreach ($noticias as $noticia): ?>
						<h1 class="text-warning text-center"><?php echo $noticia->titulo; ?></h1>
						<h4 class="text-center"><?php echo $noticia->subtitulo; ?></h4>
						<img src="<?php echo base_url ("$noticia->img");?>" id="img-visualizar" alt="..." class="img-thumbnail center-block">
						<br>
						<hr>
						<h4 class="text-justify"><?php echo $noticia->descricao; ?></h4>
						<br>
						<hr>
						<p class="text-right text-warning">Autor: <?php echo $noticia->autor; ?></p>
						<p class="text-right text-warning"><?php echo $noticia->data; ?></p>
					<?php endforeach ?>
				</div>
				<div class="col-md-1 col-xs-12"></div>
			</div>
		</div>
		<br>
        <p class="text-center">Copyright © 2018 Portal Informei.</p>
		<script src="<?php echo base_url ("extras/js/jquery.min.js");?>"></script>
		<script src="<?php echo base_url ("extras/js/bootstrap.min.js");?>"></script>
	</body>
</html>