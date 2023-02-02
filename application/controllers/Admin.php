<?php

/**
 * 
 */
defined('BASEPATH') OR exit('No direct script access allowed');
class Admin extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_Model');
	}

	function index()
	{
		$this->load->view('header');
		$this->load->view('nav');
		$this->load->view('side_nav');
		$this->load->view('dash');
		$this->load->view('footer');

	}

	function addPrison(){
		$this->load->view('header');
		$this->load->view('nav');
		$this->load->view('side_nav');
		$this->load->view('preson');
		$this->load->view('footer');
	}

	function LoginForm()
	{
		$this->load->view('header');
		$this->load->view('form');
	}

	function addPrisonAction(){
	 $form_aarray = array();
	 $form_aarray['prison_name']=$this->input->post('prison_name');
	 $form_aarray['location']=$this->input->post('location');
	 $form_aarray['region']=$this->input->post('region');
	 $form_aarray['district']=$this->input->post('district');
	 $form_aarray['status']=$this->input->post('status');
	 $res=$this->Admin_Model->addPrison($form_aarray);
	 $this->session->set_flashdata('msg',$res);
	 redirect('Admin/addPrison');
	}

	function viewPrison(){
		$data['res']=$this->Admin_Model->viewPrison();
		$this->load->view('header');
		$this->load->view('nav');
		$this->load->view('side_nav');
		$this->load->view('viewprison',$data);
		$this->load->view('footer');

	}

	function viewPrisoner(){
		$data['res']=$this->Admin_Model->viewPrisoner();
		$this->load->view('header');
		$this->load->view('nav');
		$this->load->view('side_nav');
		$this->load->view('viewprisoner',$data);
		$this->load->view('footer');

	}
	function PasivePrisoner(){
		$data['res']=$this->Admin_Model->pasivePrisoner();
		$this->load->view('header');
		$this->load->view('nav');
		$this->load->view('side_nav');
		$this->load->view('pasiveprisoner',$data);
		$this->load->view('footer');

	}
	function viewRemand(){
		$data['res']=$this->Admin_Model->viewRemand();
		$this->load->view('header');
		$this->load->view('nav');
		$this->load->view('side_nav');
		$this->load->view('viewremand',$data);
		$this->load->view('footer');

	}
	function pasiveRemand(){
		$data['res']=$this->Admin_Model->pasiveRemand();
		$this->load->view('header');
		$this->load->view('nav');
		$this->load->view('side_nav');
		$this->load->view('pasivremand',$data);
		$this->load->view('footer');

	}

	function viewLog(){
		$data['res']=$this->Admin_Model->viewLog();
		$this->load->view('header');
		$this->load->view('nav');
		$this->load->view('side_nav');
		$this->load->view('viewlog',$data);
		$this->load->view('footer');

	}
	function viewPolice(){
		$data['res']=$this->Admin_Model->viewpolice();
		$this->load->view('header');
		$this->load->view('nav');
		$this->load->view('side_nav');
		$this->load->view('viewpolice',$data);
		$this->load->view('footer');

	}
	function PasivePolice(){
		$data['res']=$this->Admin_Model->pasivepolice();
		$this->load->view('header');
		$this->load->view('nav');
		$this->load->view('side_nav');
		$this->load->view('pasivepolice',$data);
		$this->load->view('footer');

	}

	function deletePrison($id){
		$this->Admin_Model->deletePrison($id);
		redirect('Admin/viewPrison');
	}
	function deletePolice()
	{
		$this->Admin_Model->deletePolice($police_no);
		redirect('Admin/viewPolice');
	}

	function editPrison($id){
		$data['row']=$this->Admin_Model->editPrison($id);
		$this->load->view('header');
		$this->load->view('nav');
		$this->load->view('side_nav');
		$this->load->view('editPrison',$data);
		$this->load->view('footer');
	}

	function editPrisonAction(){
	 $form_aarray = array();
	 echo 'this is id '.$id;
	 $form_aarray['prison_name']=$this->input->post('prison_name');
	 $form_aarray['location']=$this->input->post('location');
	 $form_aarray['region']=$this->input->post('region');
	 $form_aarray['district']=$this->input->post('district');
	 $form_aarray['status']=$this->input->post('status');
	 $res=$this->Admin_Model->editPrisonAction($form_aarray,$id);
	 
	 redirect('Admin/viewPrison');
	}

	function LoginHadler()
	{
		$username=$this->input->post('user_name');
		$password=$this->input->post('pwd');
		$result=$this->Admin_Model->Handler($username,$password);

	}

	
}


?>