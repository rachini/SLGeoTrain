<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class MainLine_Trains extends CI_Model{
    function __construct() {
        parent::__construct();
    }
    
    
        function manage_Trains() {
        $perm = Access_controll_service::check_access('MANAGE_TRAINS');
        /*if ($perm) {
            $MainLine_Trains_Service = new MainLine_Trains_Service();

            $data['heading'] = "Manage_Trains";
            $data['companies'] = $company_service->get_all_companies($this->session->userdata('COMPANY_CODE'));

            $parials = array('content' => 'company/manage_company_view');
            $this->template->load('template/main_template', $parials, $data);
        } else {
            $this->template->load('template/access_denied_page');
        }*/
    }
}

