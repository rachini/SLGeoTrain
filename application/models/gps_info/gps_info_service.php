<?php

Class Gps_info_service extends CI_Model{
    
    function __construct() {
        parent::__construct();
        $this->load->model('gps_info/gps_info_model');
    }
    
    
public function get_all_coordinates_for_map() {

        $this->db->select('*');
        $this->db->from('gps_info');
        $this->db->order_by("gps_info.id", "desc");
        $query = $this->db->get();
        return $query->result();
    }
    
  
}

