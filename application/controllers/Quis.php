<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Quis extends CI_Controller {

	public function __construct()
	 	{
	 		parent::__construct();
	 	}
 
 	
	public function index()
	{
 
		$data['soals']=$this->quis_model->get_all_soals();
		$this->load->view('soal_view',$data);
	}

	public function tambah_soal($value='')
	{
		$radAndswer1 = $this->input->post('jwb_1');

		$data=array(
				'jwb_userid'=> '',
				'jwb_tgl'	=> date('Y-m-d'),
				'jwb_1'		=> 'radAnswer1'
			);

		$this->quis_model->soal_add();
	}
	public function soal_add()
		{	
			$data = array(
					'jawaban' => $this->input->post('jwb_'),
				);
			$insert = $this->quis_model->soal_add($data);
			echo json_encode(array("status" => TRUE));
		}
		public function ajax_edit($id)
		{
			$data = $this->quis_model->get_by_id($id);
 
			echo json_encode($data);
		}
 
		public function soal_update()
	{
		$data = array(

					'jawaban' => $this->input->post('jwb_'),
			);
		$this->quis_model->soal_update(array('soal_id' => $this->input->post('soal_id')), $data);
		echo json_encode(array("status" => TRUE));
	}
 
	public function soal_delete($id)
	{
		$this->quis_model->delete_by_id($id);
		echo json_encode(array("status" => TRUE));
	}


}

/* End of file Quis.php */
/* Location: ./application/controllers/Quis.php */