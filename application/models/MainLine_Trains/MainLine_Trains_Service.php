<?php

class MainLine_Trains_service extends CI_Model{
    
    function __construct() {
        parent::__construct();
    }
    function getTrain_Details($MainLine_Trains_model){
        $data = array('Train_No'=> $MainLine_Trains_model->get_Train_No());
        
        $this ->db->select('Starting_Station','End_station','Type','Starting_Time','Effected_Trains');
        $this ->db->from('mainline_trains');
        $this ->db->where($data);
        $query=$this->db->get();
        return $query;
    } 
}
