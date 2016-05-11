<?php

Class Static_distance_model extends CI_Model{
    
    var $id;
    var $start;
    var $destination;
    var $distance;
    
    function __construct() {
        parent::__construct();
    }
    
    public function getId() {
        return $this->id;
    }

    public function getStart() {
        return $this->start;
    }

    public function getDestination() {
        return $this->destination;
    }

    public function getDistance() {
        return $this->distance;
    }

    public function setId($id) {
        $this->id = $id;
    }

    public function setStart($start) {
        $this->start = $start;
    }

    public function setDestination($destination) {
        $this->destination = $destination;
    }

    public function setDistance($distance) {
        $this->distance = $distance;
    }


}

