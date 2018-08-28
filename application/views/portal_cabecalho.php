<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <title>Portal Informei</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url("extras/css/bootstrap.min.css");?>">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url("extras/css/style.css");?>">
    <link rel="shortcut icon" href="<?php echo base_url ("extras/img/icone.png");?>">
  </head>
  <body>
    <nav  id="navbar" class="navbar navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbarCollapse" aria-expanded="false" aria-controls="navbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <img id="logo" src="<?php echo base_url ("extras/img/logo.png");?>" alt="logo">
        </div>
        <div id="navbarCollapse" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="<?php echo base_url();?>index.php/Welcome"><span class="glyphicon glyphicon-home"></span> HOME</a></li>

            <li><a href="<?php echo base_url();?>index.php/Welcome/portal_cadastrar"><span class="glyphicon glyphicon-plus"></span> CADASTRAR</a></li>

            <li><a href="<?php echo base_url();?>index.php/Welcome/portal_noticias"><span class="glyphicon glyphicon-list"></span> NOTÍCIAS</a></li>
            
            <form class="navbar-form navbar-left" action="<?php echo base_url();?>index.php/Welcome/portal_busca" method="POST">
		    	    <div class="form-group">
		            <input type="text" class="form-control" name="palavra" placeholder="Pesquisar Notícia" required="">
		          </div>
		          <input type="submit" class="btn btn-warning" name="pesquisar" value="Procurar"></input>
		        </form>
          </ul>
        </div>
      </div>
    </nav>