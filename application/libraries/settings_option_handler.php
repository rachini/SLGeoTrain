<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');




class Settings_option_handler extends CI_Controller {

    //Settings_option_handler is extended from  CI_Controller
    // Reason to extend it from CI_Controller is to  load model functions

    public function __construct() {
        //Main
        parent::__construct();
        $this->load->model('settings/settings/settings_model');
        $this->load->model('settings/settings/settings_service');

        $this->load->model('settings/setting_parameters/setting_parameters_model');
        $this->load->model('settings/setting_parameters/setting_parameters_service');

       


    }

    public function get_option($setting_login_type_id, $user_id) {

       
      

        $setting_parameters_model = new Setting_parameters_model();
        $setting_parameters_service = new Setting_parameters_service();


        

        $login_option = '';
        $logged_user_result = '';
        
        return $login_option;

    }

}

?>