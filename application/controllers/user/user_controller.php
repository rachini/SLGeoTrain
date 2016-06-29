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

    function add_new_user() {


        $user_model = new User_model();
        $user_service = new User_service();

        $user_model->set_user_id($this->input->post('user_id', TRUE));
        $user_model->set_user_fname($this->input->post('user_fname', TRUE));
        $user_model->set_user_lname($this->input->post('user_lname', TRUE));
        $user_model->set_user_password(md5($this->input->post('user_password', TRUE)));
        $user_model->set_user_email($this->input->post('user_email', TRUE));
        $user_model->set_user_type($this->input->post('user_type', TRUE));
        $user_model->set_user_job($this->input->post('user_job', TRUE));
        $user_model->set_user_bday($this->input->post('user_bday', TRUE));
        $user_model->set_user_contact($this->input->post('user_contact', TRUE));
        $user_model->set_user_avatar('default_cover_pic.png');
        $user_model->set_del_ind('1');
        $user_model->set_added_by($this->session->userdata('USER_CODE'));
        $user_model->set_added_date(date("Y-m-d H:i:s"));


        echo $user_service->add_new_user($user_model);
    }

}

function delete_user() {


    $user_service = new User_service();
    $user_service->delete_user(trim($this->input->post('id', TRUE)));
}

function edit_user_view($user_id) {

    $user_service = new user_service();


    $data['heading'] = "Edit Employee Details";
    $data['user'] = $user_service->get_user_by_id($user_id);



    $partials = array('content' => 'user/edit_user_view');
    $this->template->load('template/main_template', $partials, $data);

}

function edit_user() {



    $user_model = new user_model();
    $user_service = new user_service();

    $user_model->set_user_id($this->input->post('user_id', TRUE));
    $user_model->set_user_fname($this->input->post('user_fname', TRUE));
    $user_model->set_user_lname($this->input->post('user_lname', TRUE));
    $user_model->set_user_password(md5($this->input->post('user_password', TRUE)));
    $user_model->set_user_email($this->input->post('user_email', TRUE));
    $user_model->set_user_type($this->input->post('user_type', TRUE));
    $user_model->set_user_bday($this->input->post('user_bday', TRUE));
    $user_model->set_user_contact($this->input->post('user_contact', TRUE));
    $user_model->set_user_avatar($this->input->post('user_avatar', TRUE));
    $user_model->set_updated_by($this->session->userdata('USER_ID'));
    $user_model->set_updated_date(date("Y-m-d H:i:s"));

    $user_model->set_user_id($this->input->post('user_id', TRUE));

    if ($this->input->post('user_id', TRUE) == $this->session->userdata('USER_ID')) {
        $this->session->set_userdata('USER_PROPIC', $this->input->post('user_avatar', TRUE));
    }


    echo $user_service->update_user($user_model);

}
?>

