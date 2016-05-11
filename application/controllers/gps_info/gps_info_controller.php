<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Gps_info_controller extends CI_Controller {

    function __construct() {
        parent::__construct();
        
        $this->load->model('gps_info/gps_info_model');
        $this->load->model('gps_info/gps_info_service');
        
        $this->load->model('static_distance/static_distance_model');
        $this->load->model('static_distance/static_distance_service');
               
    }
    
    function calculate_distance(){
    
        $gps_info_model = new gps_info_model();
        $gps_info_service = new gps_info_service();
        $static_distance_model = new static_distance_model();
        $static_distance_service = new static_distance_service();
        
        foreach ($result as $item) { 
            $multiplied = $item['speed'] * $item['timestamp']; }
        
        
        
    }
}

