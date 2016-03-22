<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Dashboard_controller extends CI_Controller {

    
    function __construct() {

        parent::__construct();

        if (!$this->session->userdata('USER_LOGGED_IN')) {
            redirect(site_url() . '/login/login_controller');
        } else {

            $this->load->model('user/user_model');
            $this->load->model('user/user_service');


        }
    }

    function index() {
        $user_service = new User_service();

        $data['users'] = $this->session->userdata('USERS');
        $partials = array('content' => 'dashboard/dashboard_view');
        $this->template->load('template/main_template', $partials,$data);
        
//        $this->load->library('googlemaps');
//        $this->googlemaps->initialize();
//        $data['map']=$this->googlemaps->create_map();
//        $this->load->view('dashboard/dashboard_view', $data);
    }
    
    

}

