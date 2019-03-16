<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Usermodel extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function login()
	{
		$data['heading']		= "SUCCESS";
		$data['message']		= 'Login Sukses';
		$data['status']			=  TRUE;

		$login = $this->ion_auth->login($this->input->post('username'), $this->input->post('password'), FALSE);
		
		if ($login == false) {
			$data['message'] 		= 'login gagal';
			$data['status']			=  FALSE;
		}else{
			$array=[
				'username' => $this->input->post('username')
			];
			$this->session->set_userdata($array);			
		}
		

		return $data;
	}

	public function cek_data()
	{
		$data['heading']		= "SUCCESS";
		$data['message']		= 'Register Gagal';
		$data['status']			=  TRUE;

		$this->form_validation->set_rules('first_name', 'nama depan', 'trim|required');
		$this->form_validation->set_rules('last_name', 'nama belakang', 'trim|required');
		$this->form_validation->set_rules('email', 'email', 'trim|required');
		$this->form_validation->set_rules('company', 'company', 'trim|required');
		$this->form_validation->set_rules('username', 'username', 'trim|required');
		$this->form_validation->set_rules('password', 'password', 'trim|required');

		if ($this->form_validation->run() == FALSE) {
			$data['message'] = validation_errors(' ','<br>' );
			$data['status'] = false;
		} 

		if ($data['status']) {
			$additional_data = array(
                'first_name' => $this->input->post('first_name'),
                'last_name' => $this->input->post('last_name'),
                'company' => $this->input->post('company'),
                );
		    $group = array('2'); 
		    $username	= $this->input->post('username');
		    $password	= $this->input->post('password');
		    $email 		= $this->input->post('email');

		    $this->ion_auth->register($username, $password, $email, $additional_data, $group);

		    $data['message'] = "Register Berhasil";
		}

		return $data;

		
	}

	public function quis()
	{
		$data['heading']		= "SUCCESS";
		$data['message']		= 'Masukkan data dengan lengkap';
		$data['status']			=  TRUE;

		$this->form_validation->set_rules('soal_jawaban', 'jawaban', 'trim|required');

		$jawaban = quote_smart($this->input->post('soal_jawaban'));
		$query = "INSERT INTO soal_jawaban VALUES('','$jawaban')";
		$result = insertQuery($query);

		if ($data['status']) {
			$additional_data = array(
                'soal_jawaban' => $this->input->post('first_name'),
                'last_name' => $this->input->post('last_name'),
                'company' => $this->input->post('company'),
                );
		    $group = array('2'); 
		    $username	= $this->input->post('username');
		    $password	= $this->input->post('password');
		    $email 		= $this->input->post('email');

		    $this->ion_auth->register($username, $password, $email, $additional_data, $group);

		    $data['message'] = "Register Berhasil";
		}

		return $data;
	}



}

/* End of file Usermodel.php */
/* Location: ./application/models/Usermodel.php */