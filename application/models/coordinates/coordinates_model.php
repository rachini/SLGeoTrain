<?php

class Coordinates_model extends CI_Model{
    
    var $id;
    var $name;
    var $address;
    var $lat;
    var $lng;
    var $type;
    
    function __construct() {
        parent::__construct();
    }
    
    public function getId() {
        return $this->id;
    }

    public function getName() {
        return $this->name;
    }

    public function getAddress() {
        return $this->address;
    }

    public function getLat() {
        return $this->lat;
    }

    public function getLng() {
        return $this->lng;
    }

    public function getType() {
        return $this->type;
    }

    public function setId($id) {
        $this->id = $id;
    }

    public function setName($name) {
        $this->name = $name;
    }

    public function setAddress($address) {
        $this->address = $address;
    }

    public function setLat($lat) {
        $this->lat = $lat;
    }

    public function setLng($lng) {
        $this->lng = $lng;
    }

    public function setType($type) {
        $this->type = $type;
    }


    
            
    
}

