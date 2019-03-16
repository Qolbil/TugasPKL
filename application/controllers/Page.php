<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Page extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
	 		$this->load->model('quis_model');
	 		$this->load->library('pagination');
		
	}
	public function quisioner()
 	{
 		//konfigurasi pagination
        $config['base_url'] = site_url('index.php/page/quisioner'); //site url
        $config['total_rows'] = $this->db->count_all('soal'); //total row
        $config['per_page'] = 5;  //show record per halaman
        $config["uri_segment"] = 3;  // uri parameter
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = floor($choice);
 
        // Membuat Style pagination untuk BootStrap v4
        $config['first_link']       = 'First';
        $config['last_link']        = 'Last';
        $config['next_link']        = 'Next';
        $config['prev_link']        = 'Prev';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Next</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';
 
        $this->pagination->initialize($config);
        $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
 
        //panggil function get_mahasiswa_list yang ada pada mmodel mahasiswa_model. 
        $data['data'] = $this->quis_model->get_soal($config["per_page"], $data['page']);          
 
        $data['pagination'] = $this->pagination->create_links();
 
        //load view mahasiswa view
        $this->load->view('quisioner',$data);

  	}

	public function index()
	{
         if(! $this->ion_auth->logged_in())
		 {
		 	$this->load->view('login');
		 }else{
		 	$this->load->view('front', '', FALSE);
		 }
				
	}
	public function register()
	{
		$this->load->view('register');
	}

	public function login()
	{
		$this->load->view('login');
	}

	public function logout()
	{
		$this->ion_auth->logout();
		redirect('','refresh');
	}
}

/* End of file Page.php */
/* Location: ./application/controllers/Page.php */