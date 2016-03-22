<?php

class Coordinates_service extends CI_Model{
    
    function __construct() {
        parent::__construct();
        $this->load->model('coordinates/coordinates_model');
    }
    
    public function get_all_coordinates_for_map() {


        $this->db->select('*');
        $this->db->from('coordinates');
        //$this->db->where('del_ind','1');
        $this->db->order_by("coordinates.id", "desc");
        $query = $this->db->get();
        return $query->result();
    }
}