<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Login_controller extends CI_Controller {

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     * 	- or -  
     * 		http://example.com/index.php/welcome/index
     * 	- or -
     * Since this controller is set as the default controller in 
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see http://codeigniter.com/user_guide/general/urls.html


     */
    function __construct() {
        parent::__construct();

        $this->load->model('user/user_model');
        $this->load->model('user/user_service');
        $this->load->library("settings_option_handler");
        
    }

    function index() {
        
       if ($this->session->userdata('USER_LOGGED_IN')) {
            redirect(base_url() . 'index.php/dashboard/dashboard_controller/');

        } else {

            $this->template->load('template/login');
        }
    
    }
    //Login details checking function 
    function authenticate_user() {

        $setting_login_type_id = '1'; //setting id 1 = User Login Options , in main_settings table

        $user_model = new User_model();
        $user_service = new User_service();
        //assigning the value in login_username to $email if login_type=1
        $email = $this->input->post('login_username', TRUE);
          

        $login_option =  $this->config->item('LOGIN_OPTION');
        // 1 = Username & Password
        //taking the un and pswd in sign in
        if ($login_option == 1) {
            //  $logged_user_result = '';
            $user_model->set_user_email($email);
            $user_model->set_user_password(md5($this->input->post('login_password', TRUE))); // password md 5 change 

            
            if (count($user_service->authenticate_user_with_password($user_model)) == 0) {
                $logged_user_result = false;
            } else {
                $logged_user_result = true;
            }
            
        }

        // 2 = Active Directory Authentication
        if ($login_option == 2) {
           

            $logged_user_result = true;
            $user_model->set_user_email($email);
 
        }

        




        
       //if logged_in_user=true take user details frm authenticate_user and put it to logged_user_dateils var
        if ($logged_user_result) {// change
          
            $logged_user_details = $user_service->authenticate_user($user_model);

                if (count($logged_user_details) == 0) {

                echo 0;
            } else {

                $user_login_status_model = new User_model();
                $user_login_status_model->set_is_online('Y');
                $user_login_status_model->set_user_id($logged_user_details->user_id);
                $user_service->update_online_status($user_login_status_model);
                //setting data to session variables and user_model setters using logged_user_details		
                $this->session->set_userdata('USER_ID', $logged_user_details->user_id);
//                                print_r(die);
//                                echo'user_id';              
                $this->session->set_userdata('USER_FIRST', '1'); //check first time log in and redirect to welcome page
                $this->session->set_userdata('USER_NAME', $logged_user_details->user_name);            
                $this->session->set_userdata('USER_EMAIL', $logged_user_details->user_email);
                $this->session->set_userdata('USER_ONLINE', 'Y');
                $this->session->set_userdata('USER_LOGGED_IN', 'TRUE');
 
 //get system date & save it in variable then update the updated_by colun of user table for relevant user
 echo 1;
                
                
            }
        } else {
            echo 0;
        }
    }



    function logout() {

        $user_login_status_model = new User_model();
        $user_service = new User_service();

        $user_login_status_model->set_is_online('N');
        $user_login_status_model->set_user_id($this->session->userdata('USER_ID'));

        $user_service->update_online_status($user_login_status_model);

        $this->session->sess_destroy();
        redirect(site_url() . '/login/login_controller');
    }

  }
