<?php

Class Trackdata_model extends CI_Model{
    
    var $latitude;
    var $longitude;
    var $altitude;
    var $timestamp;
    var $velocity;
    var $trainName;
    
    function __construct() {
        parent::__construct();
    }
    
    public function get_latitude() {
        return $this->latitude;
    }

    public function get_longitude() {
        return $this->longitude;
    }

    public function get_altitude() {
        return $this->altitude;
    }

    public function get_timestamp() {
        return $this->timestamp;
    }

    public function get_velocity() {
        return $this->velocity;
    }

    public function get_trainName() {
        return $this->trainName;
    }

    public function set_latitude($latitude) {
        $this->latitude = $latitude;
    }

    public function set_longitude($longitude) {
        $this->longitude = $longitude;
    }

    public function set_altitude($altitude) {
        $this->altitude = $altitude;
    }

    public function set_timestamp($timestamp) {
        $this->timestamp = $timestamp;
    }

    public function set_velocity($velocity) {
        $this->velocity = $velocity;
    }

    public function set_trainName($trainName) {
        $this->trainName = $trainName;
    }



}



