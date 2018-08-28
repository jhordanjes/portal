<?php 
$this->load->view("portal_cabecalho");
?>
		<div class="container" id="conteudo">
			<h2 class="text-warning"><span class="glyphicon glyphicon-pencil"></span> Atualização de Publicação</h2>
    	   	<hr>
			<div class="row">
				<div class="col-md-2 col-xs-12"></div>
				<div class="col-md-8 col-xs-12">
					<?php foreach ($noticias as $noticia): ?>
						<form class="needs-validation" action="<?php echo base_url();?>index.php/Welcome/editar_noticia" method="POST">
							<input type="hidden" name="id" value="<?php echo $noticia->id; ?>">
							<label  class="control-label">Autor</label>
							<input type="text" class="form-control" name="autor" value="<?php echo $noticia->autor; ?>">
	                		<label  class="control-label">Título</label>
	                		<input type="text" class="form-control" name="titulo" value="<?php echo $noticia->titulo; ?>">
	                        <label  class="control-label">Subtítulo</label>
	                        <input type="text" class="form-control" name="subtitulo" value="<?php echo $noticia->subtitulo; ?>">
	                		<label  class="control-label">Descrição</label>
	                		<textarea type="text" class="form-control" rows="5" name="descricao"><?php echo $noticia->descricao; ?></textarea>
	    					<hr>
	        				<input type="submit" class="btn btn-warning" name="editar_noticia" value="Atualizar"></input>
						</form>
					<?php endforeach ?>
				</div>
				<div class="col-md-2 col-xs-12"></div>
			</div>
			<br>	
		</div>
		<br>
        <p class="text-center">Copyright © 2018 Portal Informei.</p>
		<script src="<?php echo base_url ("extras/js/jquery.min.js");?>"></script>
		<script src="<?php echo base_url ("extras/js/bootstrap.min.js");?>"></script>
	</body>
</html>