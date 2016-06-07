<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class MainLine_Trains_controller extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        
        $this->load->model('MainLine_Trains/MainLine_Trains_model');
        $this->load->model('MainLine_Trains/MainLine_Trains_Service');
    }
    
    
        function manage_Trains() {
            
        $perm = Access_controll_service::check_access('MANAGE_TRAINS');
        if ($perm) {
            $mainLine_trains_service = new mainLine_trains_service();

            $data['heading'] = "Manage_Trains";
            $data['trains'] = $mainLine_trains_service->getTrain_Details($this->session->userdata('TRAIN_NO'));

            $parials = array('content' => 'MainLine_Trains/manage_train_view');
            $this->template->load('template/main_template', $parials, $data);
        } else {
            $this->template->load('template/access_denied_page');
        }
    }
}

