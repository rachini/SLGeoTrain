<?php

Class Trackdata_service extends CI_Model{
    
    function __construct() {
        parent::__construct();
        $this->load->model('trackdata/trackdata_model');
    }
    
    
public function get_all_coordinates_for_map() {

        $this->db->select('*');
        $this->db->from('trackdata');
        $this->db->order_by("trackdata.timestamp", "desc");
        $query = $this->db->get();
        return $query->result();
    }
    
  
}

