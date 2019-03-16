<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Register extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('session');
		$this->load->helper('form');
		$this->load->helper('url');
		$this->load->library('ion_auth');
	}

	public function postdata($model= null, $function = null)
	{
		$this->load->model($model);

		$data = $this->$model->$function();

		echo json_encode($data);
		
	}

}

/* End of file Register.php */
/* Location: ./application/controllers/Register.php */