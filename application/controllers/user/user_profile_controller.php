<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class User_profile_controller extends CI_Controller {

    function __construct() {
        parent::__construct();
        
            $this->load->model('user/user_model');
            $this->load->model('user/user_service'); 
    }

    /*
     * This function is to view the user profile
     */

    function view_profile() {

        $user_service = new User_service();

        $data['heading'] = "My Profile";
        $data['user_detail'] = $user_service->get_user_by_email($this->session->userdata('USER_EMAIL'));
        $data['users'] = $user_service->get_all_users($this->session->userdata('USER_ID'));
   
        $partials = array('content' => 'user/user_profile_view');
        $this->template->load('template/main_template', $partials, $data);
    }

    /*
     * This function is to dispaly the edit profile view
     */

    function edit_user_profile($user_id) {

        $user_service = new User_service();

        $data['heading'] = "Edit User Details";
        $data['user_detail'] = $user_service->get_user_by_id($user_id);


        $partials = array('content' => 'user/edit_user_profile');
        $this->template->load('template/main_template', $partials, $data);

    }

    /*
     * This function is to edit user's details in the profile using the 
     * function update_user_profile in user_service
     */

    function edit_user() {

        $user_model = new user_model();
        $user_service = new user_service();
        $user_model->set_user_name($this->input->post('user_name', TRUE));
        $user_model->set_user_email($this->input->post('user_email', TRUE));
        
        ;

        $user_model->set_user_id($this->input->post('user_id', TRUE));


        echo $user_service->update_user_profile($user_model);

    }

    /*
     * This function is to upload a cover image to the profile
     */

    function upload_user_cover_pic() {

        $uploaddir = './uploads/user_cover_pics/';
        $unique_tag = 'cover_pic';

        $filename = $unique_tag . time() . '-' . basename($_FILES['uploadfile']['name']); //this is the original name of the file on user machine
        $file = $uploaddir . $filename; // this is the full path of the uploaded file

        if (move_uploaded_file($_FILES['uploadfile']['tmp_name'], $file)) {
            echo $filename;
        } else {
            echo "error";
        }
    }

    /*
     * This function is to upload profile pic to user
     */

    function upload_user_avatar() {

        $uploaddir = './uploads/user_avatar/';
        $unique_tag = 'user_avatar';

        $filename = $unique_tag . time() . '-' . basename($_FILES['uploadfile2']['name']); //this is the file name
        $file = $uploaddir . $filename; // this is the full path of the uploaded file

        if (move_uploaded_file($_FILES['uploadfile2']['tmp_name'], $file)) {
            echo $filename;
        } else {
            echo "error";
        }
    }

    /*
     * This function is to update user profile pic
     */

    function update_user_avatar() {
        $user_service = new User_service();
        $user_model = new User_model();

        $user_model->set_user_avatar($this->input->post('user_avatar', TRUE));
        $user_model->set_user_id($this->input->post('user_id', TRUE));

        $result = $user_service->update_user_avatar($user_model);

        //update session profile pic into new pic
        $this->session->set_userdata('USER_PROPIC', $this->input->post('user_avatar', TRUE));

        echo $result;
    }

    /*
     * This function is to update the user cover image
     */

    function update_user_cover_image() {
        $user_service = new User_service();
        $user_model = new User_model();

        $user_model->set_user_cover_image($this->input->post('user_cover_image', TRUE));
        $user_model->set_user_id($this->input->post('user_id', TRUE));

        $result = $user_service->update_user_cover_image($user_model);

        //update session profile pic into new pic
       $this->session->set_userdata('USER_COVERPIC', $this->input->post('user_cover_image', TRUE));

        echo $result;
    }

}

?>
