<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class User_controller extends CI_Controller {

    function __construct() {
        parent::__construct();
        
        

            $this->load->model('user/user_model');
            $this->load->model('user/user_service');
                    
    }

    function manage_users() {

        $user_service = new User_service();
        
        $data['heading'] = "Manage User";
        $data['users'] = $user_service->get_all_user_details($this->session->userdata('USER_ID'));
        $partials = array('content' => 'user/manage_user_view');
        $this->template->load('template/main_template', $partials, $data);
    }
    
    

   
    

    


    
  
}



?>

