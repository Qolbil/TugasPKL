<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Quis_model extends CI_Model {

	var $table = 'soal';
 
 
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	 
	public function get_soal($limit, $start)
	{
    $this->db->where('soal_status','1');
	$query = $this->db->get('soal', $limit, $start);
	return $query;
	}
	 
	public function get_by_id($id)
	{
		$this->db->from($this->table);
		$this->db->join('db_jawaban','jwb_id = soal_id');
		$this->db->where('soal_id',$id);
		$query = $this->db->get();
		return $query->row();
	}
 
	public function soal_add($data)
	{

		$this->db->insert($this->table, $data);
		return $this->db->insert_id();
	}
 
	public function soal_update($where, $data)
	{
		$this->db->update($this->table, $data, $where);
		return $this->db->affected_rows();
	}
 
	public function delete_by_id($id)
	{
		$this->db->where('soal_id', $id);
		$this->db->delete($this->table);
	}
 

}

/* End of file Quis_model.php */
/* Location: ./application/models/Quis_model.php */