<?php

Class Gps_info_model extends CI_Model{
    
    var $id;
    var $longitude;
    var $latitude;
    var $altitude;
    var $velocity;
    var $timestamp;
    var $speed;
    var $name;
    
    function __construct() {
        parent::__construct();
    }
    
    public function getId() {
        return $this->id;
    }

    public function getLongitude() {
        return $this->longitude;
    }

    public function getLatitude() {
        return $this->latitude;
    }

    public function getAltitude() {
        return $this->altitude;
    }

    public function getVelocity() {
        return $this->velocity;
    }

    public function getTimestamp() {
        return $this->timestamp;
    }

    public function getSpeed() {
        return $this->speed;
    }

    public function getName() {
        return $this->name;
    }

    public function setId($id) {
        $this->id = $id;
    }

    public function setLongitude($longitude) {
        $this->longitude = $longitude;
    }

    public function setLatitude($latitude) {
        $this->latitude = $latitude;
    }

    public function setAltitude($altitude) {
        $this->altitude = $altitude;
    }

    public function setVelocity($velocity) {
        $this->velocity = $velocity;
    }

    public function setTimestamp($timestamp) {
        $this->timestamp = $timestamp;
    }

    public function setSpeed($speed) {
        $this->speed = $speed;
    }

    public function setName($name) {
        $this->name = $name;
    }


}



