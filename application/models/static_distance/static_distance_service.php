<?php

Class Static_distance_service extends CI_Model{
    
    function __construct() {
        parent::__construct();
        $this->load->model('static_distance/static_distance_model');
    }
    
     public function get_time(){
        
        $this->db->select('distance');
        $this->db->from('static_distance');
        $this->db->orderby("static_distance.id",'desc');
        $query = $this->db->get();
        return $query->result();
   }
}

