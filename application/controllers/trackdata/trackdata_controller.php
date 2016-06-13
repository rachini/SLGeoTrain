<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Gps_info_controller extends CI_Controller {

    function __construct() {
        parent::__construct();
        
        $this->load->model('trackdata/trackdata_model');
        $this->load->model('trackdata/trackdata_service');
        $this->load->library("Googlemaps.php");
        $this->load->library("visualization.js");
        
//        $this->load->model('static_distance/static_distance_model');
//        $this->load->model('static_distance/static_distance_service');
               
    }
    
    function view_coordinates() {
       
        $perm = Access_controll_service::check_access('VIEW_COORDINATES');
        if ($perm) {
            $trackdata_service = new Trackdata_service();

            
            $data['coordinates']=  json_encode($trackdata_service->get_all_coordinates_for_map());

            $parials = array('content' => 'dashboard/dashboard_view');
            $this->template->load('template/main_template', $parials,$data);
        } else {
            $this->template->load('template/access_denied_page');
        }
    }
    
    function load_map_rachni(){
        
        $data['title']="rachini";
        $trackdata_service = new Trackdata_service();
        
        //service cls eke func ekak liyana okoma one long lat ganna
        //metanadi eka call karana
        $data['results']=  $trackdata_service->get_all_coordinates_for_map();
        
        
        echo $this->load->view("dashboard/map",$data); 
    }
    
    
}

