<?php

class User_service extends CI_Model {

    function __construct() {

        parent::__construct();
    }

    //update user_profile
    function update_user_profile($user_model) {

        $data = array(
            'user_fname' => $user_model->get_user_fname(),
            'user_lname' => $user_model->get_user_lname(),
            'user_email' => $user_model->get_user_email(),
            'user_job' => $user_model->get_user_job(),
            'user_bday' => $user_model->get_user_bday(),
            'user_contact' => $user_model->get_user_contact(),
            
        );

        $this->db->where('user_id', $user_model->get_user_id());
        return $this->db->update('user', $data);
    }
    
    
    //update user last login date
       function update_user_lastlogin_date($user_model) {

        $data = array(
            'updated_date' => $user_model->get_current_date(),
        );

        $this->db->where('user_id', $user_model->get_user_id());
        return $this->db->update('user', $data);
    }
    
    

    //update online status
    function update_online_status($user_model) {
        $data = array('is_online' => $user_model->get_is_online());
        $this->db->where('user_id', $user_model->get_user_id());
        return $this->db->update('user', $data);
    }

    //update user avatar
    function update_user_avatar($user_model) {
        $data = array('user_avatar' => $user_model->get_user_avatar());
        $this->db->where('user_id', $user_model->get_user_id());
        return $this->db->update('user', $data);
    }

    //update user cover image
    function update_user_cover_image($user_model) {
        $data = array('user_cover_image' => $user_model->get_user_cover_image());
        $this->db->where('user_id', $user_model->get_user_id());
        return $this->db->update('user', $data);
    }

    
  
    function get_user_by_email($user_email) {

        $query = $this->db->get_where('user', array('user_email' => $user_email));
        return $query->row();
    }
    

    
    /*display user avatar*/
    public function get_all_users() {


        $this->db->select('user_avatar');
        $this->db->from('user');
        $this->db->where('del_ind','1');
        $this->db->order_by("user.user_id", "desc");
        $query = $this->db->get();
        return $query->result();
    }
    
    //manage users
    public function get_all_user_details() {


        $this->db->select('*');
        $this->db->from('user');
        $this->db->where('del_ind','1');
        $this->db->order_by("user.user_id", "desc");
        $query = $this->db->get();
        return $query->result();
    }

    function authenticate_user($user_model) {

        $data = array('user_email' => $user_model->get_user_email() );

        $this->db->select('*');
        $this->db->from('user');
        $this->db->where($data);
        $query = $this->db->get();
      
        return $query->row();
    }

    function authenticate_user_with_password($user_model) {

        $data = array('user_email' => $user_model->get_user_email(), 'user_password' => $user_model->get_user_password());

        $this->db->select('*');
        $this->db->from('user');
        $this->db->where($data);
        $query = $this->db->get();
          
        return $query->row();
    }

    

    
    function add_new_user($user_model) {

        return $this->db->insert('user', $user_model);
    }

    /*
     * this function use in user controller add_new_user() function
     */

    function add_user($user_model) {

        $this->db->insert('user', $user_model);
        $this->db->last_query();
        return $this->db->insert_id();
    }

    /*
     * this function use in user controller delete_user() function
     */

    function delete_user($user_id) {
        $data = array('del_ind' => '0');
        $this->db->where('user_id', $user_id);
        return $this->db->update('user', $data);
    }

    
    function checkUserIdExists($user_id) {

        $query = $this->db->get_where('lcs_user', array('user_id' => $user_id));
        return $query->num_rows();
    }


    function setnewPassword($usermodel) {

        $data = array('Password' => $usermodel->getPassword());
        $this->db->where('User_Id', $usermodel->getUser_Id());
        $result = $this->db->update('lcs_user', $data);
        return $result;
    }

    function change_user_pro_pic($usermodel) {

        $data = array('user_avatar' => $usermodel->get_user_avatar());
        $this->db->where('user_id', $usermodel->get_user_id());
        $result = $this->db->update('lcs_user', $data);
        return $result;
    }
    
    //get user details by user id
    /*this function use in user controller edit_user_view($ser_id)  function*/
    function get_user_by_id($user_id) {

        $query = $this->db->get_where('user', array('user_id' => $user_id));
        return $query->row();
    }


    

}

