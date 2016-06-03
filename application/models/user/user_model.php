<?php

class User_model extends CI_Model{
    
    var $user_id;
    var $user_fname;
    var $user_lname;
    var $user_password;
    var $user_email;
    var $user_type;
    var $user_job;
    var $user_bday;
    var $user_contact;
    var $user_avatar;
    var $user_cover_image;
    var $is_online;
    var $del_ind;
    var $added_date;
    var $updated_by;
    var $updated_date;
    
    function __construct(){
        parent::__construct();
    }
    
    public function get_user_id() {
        return $this->user_id;
    }

    public function get_user_fname() {
        return $this->user_fname;
    }

    public function get_user_lname() {
        return $this->user_lname;
    }

    public function get_user_password() {
        return $this->user_password;
    }

    public function get_user_email() {
        return $this->user_email;
    }
    
    public function get_user_type() {
        return $this->user_type;
    }

    public function get_user_job() {
        return $this->user_job;
    }

    public function get_user_bday() {
        return $this->user_bday;
    }

    public function get_user_contact() {
        return $this->user_contact;
    }

    
    public function get_user_avatar() {
        return $this->user_avatar;
    }

    public function get_user_cover_image() {
        return $this->user_cover_image;
    }

    public function get_is_online() {
        return $this->is_online;
    }

    public function get_del_ind() {
        return $this->del_ind;
    }

    public function get_added_date() {
        return $this->added_date;
    }

    public function get_updated_by() {
        return $this->updated_by;
    }

    public function get_updated_date() {
        return $this->updated_date;
    }

    public function set_user_id($user_id) {
        $this->user_id = $user_id;
    }

    public function set_user_fname($user_fname) {
        $this->user_fname = $user_fname;
    }

    public function set_user_lname($user_lname) {
        $this->user_lname = $user_lname;
    }
    
    public function set_user_password($user_password) {
        $this->user_password = $user_password;
    }

    public function set_user_email($user_email) {
        $this->user_email = $user_email;
    }
    
    public function set_user_type($user_type) {
        $this->user_type = $user_type;
    }

    public function set_user_job($user_job) {
        $this->user_job = $user_job;
    }

    public function set_user_bday($user_bday) {
        $this->user_bday = $user_bday;
    }

    public function set_user_contact($user_contact) {
        $this->user_contact = $user_contact;
    }

    
    public function set_user_avatar($user_avatar) {
        $this->user_avatar = $user_avatar;
    }

    public function set_user_cover_image($user_cover_image) {
        $this->user_cover_image = $user_cover_image;
    }

    public function set_is_online($is_online) {
        $this->is_online = $is_online;
    }

    public function set_del_ind($del_ind) {
        $this->del_ind = $del_ind;
    }

    public function set_added_date($added_date) {
        $this->added_date = $added_date;
    }

    public function set_updated_by($updated_by) {
        $this->updated_by = $updated_by;
    }

    public function set_updated_date($updated_date) {
        $this->updated_date = $updated_date;
    }


}


    





?>
