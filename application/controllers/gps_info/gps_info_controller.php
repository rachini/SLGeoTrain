<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Gps_info_controller extends CI_Controller {

    function __construct() {
        parent::__construct();
        
        $this->load->model('gps_info/gps_info_model');
        $this->load->model('gps_info/gps_info_service');
        $this->load->library("Googlemaps.php");
        $this->load->library("visualization.js");
        
//        $this->load->model('static_distance/static_distance_model');
//        $this->load->model('static_distance/static_distance_service');
               
    }
    
    function view_coordinates() {
       
        $perm = Access_controll_service::check_access('VIEW_COORDINATES');
        if ($perm) {
            $gps_info_service = new Gps_info_service();

            
            $data['coordinates']=  json_encode($gps_info_service->get_all_coordinates_for_map());

            $parials = array('content' => 'dashboard/dashboard_view');
            $this->template->load('template/main_template', $parials,$data);
        } else {
            $this->template->load('template/access_denied_page');
        }
    }
    
    
}

