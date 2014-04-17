<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Match extends CI_Controller {

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
		redirect('match/lists');
	}


	function lists() {
		$data = array();
		if($this->input->post())
		{
			if($this->input->post('m_id') != NULL) {
				$id = $this->input->post('m_id');
				$this->m_match->save_score($id);
				redirect('match/lists', 'refresh');
			}

			else if ($this->input->post('m_id') != '' ) {	
				$id = $this->input->post('m_id');
				$this->m_match->delete($id);
				redirect('match/lists', 'refresh');

			}
			else {
				$this->m_match->add_match();
				redirect('match/lists', 'refresh');
			}

		redirect('match/lists', 'refresh');

		}


		$data['matches'] = $this->m_match->getallmatch();
		$data['teams'] = $this->m_league->getallteams();

		$this->load->view('header');
		$this->load->view('v_match', $data);
		$this->load->view('footer');


		
	}

}