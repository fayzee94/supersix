<?php
Class M_league extends CI_Model
{

	function add_teams() {

		if($this->db->insert('sekolah', $this->input->post())) {

		return TRUE;

		}
		else {
			return FALSE; 
		}
	}

	function getallteams() {
		$query = $this->db->get('sekolah');

		return $query->result_array();
	}

	function getallteamsobygroup() {
		$this->db->order_by('group', 'ASC');
		$query = $this->db->get('sekolah');

		return $query->result_array();

	}
}