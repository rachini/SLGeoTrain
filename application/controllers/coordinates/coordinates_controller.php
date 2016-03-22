<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Coordinates_controller extends CI_Controller {

    function __construct() {
        parent::__construct();
        
        $this->load->model('coordinates/coordinates_model');
        $this->load->model('coordinates/coordinates_service');
        $this->load->library("Googlemaps.php");
        $this->load->library("visualization.js");
        
        
    }
    
   function view_coordinates() {
       
        $perm = Access_controll_service::check_access('VIEW_COORDINATES');
        if ($perm) {
            $coordinates_service = new Coordinates_service();

            
            $data['coordinates']=  json_encode($coordinates_service->get_all_coordinates_for_map());

            $parials = array('content' => 'dashboard/dashboard_view');
            $this->template->load('template/main_template', $parials,$data);
        } else {
            $this->template->load('template/access_denied_page');
        }
    }
}







