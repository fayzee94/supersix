<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class League extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */

	function __construct()
		 {
		   parent::__construct();
		   $this->load->model('m_league');
		   $this->load->model('m_match');
		 }

	function index()
	{		
		$data['teams'] = $this->m_league->getallteamsobygroup();

		$this->load->view('header');
		$this->load->view('v_league', $data);
		$this->load->view('footer');

	}

	function teams() {

	if($this->input->post()) {
		$this->m_league->add_teams();
	}


	$data['teams'] = $this->m_league->getallteams();

		$this->load->view('header');
		$this->load->view('v_teams', $data);
		$this->load->view('footer');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */