<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Noticias extends CI_Model {
	function __construct(){
		parent::__construct();
	}

	//FUNÇÃO PARA BUSCAR TODAS AS NOTÍCIAS DE FORMA DECRESCENTE.
	public function buscaTodos(){
		$this->db->order_by('id','DESC');
		return $this->db->get("noticias")->result();
	}

	//FUNÇÃO PARA BUSCAR AS 10 ÚLTIMAS NOTICIAS.
	public function busca_certa(){
		$this->db->order_by('id','DESC');
		$this->db->limit(10);
		return $this->db->get("noticias")->result();
	}


	//FUNÇÃO RESPONSAVEL DE CADASTRAR UMA NOTICIA
	function cadastrar_noticia($autor, $titulo, $subtitulo, $descricao, $img){
		return $this->db->query("INSERT INTO noticias(autor, titulo, subtitulo, descricao, img) VALUES ('$autor', '$titulo', '$subtitulo', '$descricao', '$img')");
	}

	//FUNÇÃO PARA REALIZAR PESQUISAS DE NOTICIAS
	function busca_noticia($palavra){
		$this->db->select('*');
		$this->db->like('titulo',$palavra);
		return $this->db->get("noticias")->result();
	}
}