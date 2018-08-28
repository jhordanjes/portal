<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->helper("url");
		$this->load->helper('string');
		$this->load->model("noticias");
		$this->load->library('upload');
	}
	
	//CHAMADA DA VIEW HOME
	public function index(){  
		$this->load->model("Noticias");
		$lista = $this->Noticias->busca_certa();
		$info = array("noticias" => $lista);
		$this->load->view('index', $info);
	}

	//CHAMADA DA VIEW PARA CADASTRAR UMA NOTÍCIA
	public function portal_cadastrar(){
		$this->load->view('portal_cadastrar');
	}

	//CHAMADA DA VIEW PARA MOSTRAR UMA PESQUISA
	public function portal_busca(){
		$palavra =  strip_tags(trim($_POST['palavra']));
		$this->load->model("Noticias");
		$lista = $this->noticias->busca_noticia($palavra);
		$info = array("noticias" => $lista);
		$this->load->view('portal_busca',$info);
	}

	//CHAMADA DA VIEW PARA VISUALIZAR UMA NOTÍCIA
	public function portal_visualizar($id=null){
		$this->db->where('id',$id);
		$this->load->model("Noticias");
		$lista = $this->Noticias->buscaTodos();
		$info = array("noticias" => $lista);
		$this->load->view('portal_visualizar',$info);
	}

	//FUNÇÃO PARA CADASTRAR UMA NOTÍCIA
	public function cadastrar_noticia(){
		if(isset($_POST['cadastrar_noticia'])){
			$autor =  strip_tags(trim($_POST['autor']));
			$titulo =  strip_tags(trim($_POST['titulo']));
			$subtitulo =  strip_tags(trim($_POST['subtitulo']));
			$descricao =  strip_tags(trim($_POST['descricao']));
			$img =  strip_tags(trim($_POST['img']));

			if(empty ($autor) || empty ($titulo) || empty ($subtitulo) || empty ($descricao) || empty ($img)){
				$this->session->set_flashdata('warning', 'Preencha todos os dados!');
				redirect ('index.php/Welcome/portal_cadastrar');
			}else{
				$res = $this->noticias->cadastrar_noticia($autor, $titulo, $subtitulo, $descricao, $img);
				if($res){
					$this->session->set_flashdata('sucess', 'Cadastrado com sucesso!');
					redirect ('index.php/Welcome/portal_cadastrar');
				}else{
					$this->session->set_flashdata('error', 'Falha ao salvar os dados no Banco!');
					redirect ('index.php/Welcome/portal_cadastrar');
				}
			}
		}
	}

		
	
	//CHAMADA DA VIEW PARA MOSTRAR TODAS AS NOTÍCIAS
	public function portal_noticias(){
		$this->load->model("Noticias");
		$lista = $this->Noticias->buscaTodos();
		$info = array("noticias" => $lista);
		$this->load->view('portal_noticias', $info);
	}

	//FUNÇÃO PARA REMOVER UMA NOTÍCIA
	public function remover($id=null){
		$this->db->where('id',$id);
		if($this->db->delete('noticias')){
			$this->session->set_flashdata('sucess', 'Excluido com sucesso!');
			redirect ('index.php/Welcome/portal_noticias');
		}
	}

	//CHAMADA DA VIEW PARA EDITAR UMA NOTÍCIA
	public function portal_editar($id=null){
		$this->db->where('id',$id);
		$this->load->model("Noticias");
		$lista = $this->Noticias->buscaTodos();
		$info = array("noticias" => $lista);
		$this->load->view('portal_editar',$info);
	}

	//FUNÇÃO PARA EDITAR UMA NOTÍCIA
	public function editar_noticia (){
		if(isset($_POST['editar_noticia'])){
			$id = strip_tags(trim($_POST['id']));
			$noticia['autor'] =  strip_tags(trim($_POST['autor']));
			$noticia['titulo'] =  strip_tags(trim($_POST['titulo']));
			$noticia['subtitulo'] =  strip_tags(trim($_POST['subtitulo']));
			$noticia['descricao'] =  strip_tags(trim($_POST['descricao']));
			$this->db->where('id',$id);
			if($this->db->update('noticias', $noticia)){
				$this->session->set_flashdata('sucess', 'Noticia Atualizada!');
				redirect ('index.php/Welcome/portal_noticias');
			}
		}

	}

	//TENTATIVA DE FAZER UPLOAD DE IMAGEM
	public function teste_upload()
        {
                $config['upload_path']          = './uploads/';
                $config['allowed_types']        = 'jpeg|jpg|png';
                $config['max_size']             = 3000;

                $this->load->library('upload', $config);

                if ( ! $this->upload->do_upload('userfile'))
                       echo $this->upload->display_errors();    
        }
}