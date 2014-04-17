<?php
Class M_match extends CI_Model
{

	function getallmatch() {
		$this->db->join('sekolah', 'sekolah.id = match.h_id', 'INNER');
		$this->db->join('sekolah2','sekolah2.id = match.a_id', 'INNER');


		$query = $this->db->get('match');


		return $query->result_array();

	}

	function add_match() {

		if($this->db->insert('match', $this->input->post())) {

		return TRUE;
		}
		else {
			return FALSE; 
		}
	}

	function save_score($id) {
		$data = array(
			'h_s' => $this->input->post('h_s'),
			'a_s' => $this->input->post('a_s'),
		);
		$this->db->where('id',$id);
		$query = $this->db->update('match', $data);
	}

	function delete($id){
		$data = array(
			'id' => $this->row->delete('id'),
			'h_id' => $this->row->delete('h_id'),
			'a_id' => $this->row->delete('a_id'),
			'h_s' => $this->row->delete('h_s'),
			'a_s' => $this->row->delete('a_s'),
			'stage' => $this->row->delete('stage'),
			);

        $this->db->where('id', $id);
        $query = $this->db->delete('match',$data);
  }

	}


	