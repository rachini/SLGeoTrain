<?php

Class Gps_info_service extends CI_Model{
    
    function __construct() {
        parent::__construct();
        $this->load->model('gps_info/gps_info_model');
    }
    
    public function get_distance()
{
    $res = $this->db->select('speed, timestamp')
      ->from('gps_info')
      ->orderby('id', 'desc')
      ->get()
      ->result_array();

     return $res;


}
    
//    public function get_time(){
//        
//        $this->db->select('timestamp');
//        $this->db->from('gps_info');
//        $this->db->orderby('gps_info.id','desc');
//        $query = $this->db->get();
//        return $query->result();
//    }
    
  
}

