<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		if (!$this->session->userdata('username')) {
			redirect('auth');
		}
		$pesanan = $this->db->get_where('pesanan', ['lunas' => 0])->result_array();
		$this->data['notif_pesanan'] = 0;
		foreach ($pesanan as $p) {
			$this->data['notif_pesanan'] += $p['quantity'];
		}
	}

	public function index()
	{
		$data = $this->data;
		$data['title'] = 'kenangan-senja';


		$this->load->view('layouts/_header', $data);
		$this->load->view('home/index');
		$this->load->view('layouts/_footer');
	}
}
