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

       

//        $this->load->model('Main/User_settings/User_settingsmodel');
//        $this->load->model('Main/User_settings/User_settingsservice');
    }

    public function get_option($setting_login_type_id, $user_id) {

        //parameters = setting_id,user_id
//        $user_settingsmodel = new User_settingsmodel();
//        $user_settingsservice = new User_settingsservice();

      

        $setting_parameters_model = new Setting_parameters_model();
        $setting_parameters_service = new Setting_parameters_service();


        //get the user settings
//        $user_settingsmodel->setUser_Code($user_id);
//        $user_settingsmodel->setSetting_id($setting_login_type_id);
//
//        $user_setting = $user_settingsservice->getUserSettingbyid($user_settingsmodel);

        $login_option = '';
        $logged_user_result = '';

    }

}

?>