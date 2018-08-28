<?php 
$this->load->view("portal_cabecalho");
?>

        <div class="container" id="conteudo">
    	   <h2 class="text-warning"><span class="glyphicon glyphicon-plus-sign"></span> Cadastrar Nova Notícia</h2>
    	   <hr>
    	   <div class="row">
    	       <div class="col-md-2 col-xs-12"></div>
               <div class="col-md-8 col-xs-12"> 
                    <?php if ($this->session->flashdata('sucess')){?>
                        <div class="alert alert-success" role="alert">
                            <p><?php echo $this->session->flashdata('sucess'); ?></p>
                        </div> 
                    <?php } if ($this->session->flashdata('warning')){?>
                        <div class="alert alert-warning" role="alert">
                            <p><?php echo $this->session->flashdata('warning'); ?></p>
                        </div> 
                    <?php } if ($this->session->flashdata('error')){?>
                        <div class="alert alert-danger" role="alert">
                            <p><?php echo $this->session->flashdata('error'); ?></p>
                        </div>
                    <?php } ?>
                    <form class="needs-validation" action="<?php echo base_url();?>index.php/Welcome/cadastrar_noticia" method="POST">
            			<label  class="control-label">Autor</label>
                		<input type="text" class="form-control" name="autor">
                		<label  class="control-label">Título</label>
                		<input type="text" class="form-control" name="titulo">
                        <label  class="control-label">Subtítulo</label>
                        <input type="text" class="form-control" name="subtitulo">
                        <label  class="control-label">Imagem</label>
                        <input type="text" class="form-control" name="img">
                		<label  class="control-label">Descrição</label>
                        <textarea type="text" class="form-control" rows="5" name="descricao"></textarea>
    					<hr>
        				<input type="submit" class="btn btn-warning" name="cadastrar_noticia" value="Cadastrar"></input>
        		    </form>   
                </div>
                <div class="col-md-2 col-xs-12"></div>
            </div>
        </div>
        <br>
        <p class="text-center">Copyright © 2018 Portal Informei.</p>
        <script src="<?php echo base_url ("extras/js/jquery.min.js");?>"></script>
        <script src="<?php echo base_url ("extras/js/bootstrap.min.js");?>"></script>
    </body>
</html>