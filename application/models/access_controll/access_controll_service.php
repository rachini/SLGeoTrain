<?php

class Access_controll_service extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function check_access($HCODE) {

        $this->db->select('privilege.privilege_code');
        $this->db->from('user_privileges');
        $this->db->join('privilege', 'privilege.privilege_code = user_privileges.privilege_code');
        $this->db->where('privilege.priviledge_code_HF', $HCODE);
        $this->db->where('user_privileges.user_id', $this->session->userdata('USER_ID'));
        $query = $this->db->get();
        return $query->num_rows();
    }

    function get_system_privileges_per_user() {
        //function will return all the systems that the user has privileges for
        $this->db->select('s.system_code');
        $this->db->from('user_privileges u');
        $this->db->join('privilege p', 'u.privilege_code = p.privilege_code');
        $this->db->join('privilege_master pm', 'p.privilege_master_code = pm.privilege_master_code');
        $this->db->join('system s', 'pm.system_code = s.system_code');
        $this->db->where('u.user_id', $this->session->userdata('USER_ID'));
        $this->db->group_by('s.system_code');
        $query = $this->db->get();

        $systems = array();

        $results = $query->result();

        foreach ($query->result() as $row) {
            $systems[] = $row->system_code;
        }

        return $systems;
    }

}