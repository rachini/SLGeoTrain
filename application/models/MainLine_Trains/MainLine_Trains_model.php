<?php

class MainLine_Trains extends CI_Model{
    
    var $Train_No;
    var $Starting_Station;
    var $End_Station;
    var $Type;
    Var $Starting_Time;
    var $Effected_Trains;
    
    function __construct() {
        parent::__construct();
    }
    function getTrain_No() {
        return $this->Train_No;
    }

    function getStarting_Station() {
        return $this->Starting_Station;
    }

    function getEnd_Station() {
        return $this->End_Station;
    }

    function getType() {
        return $this->Type;
    }

    function getStarting_Time() {
        return $this->Starting_Time;
    }

    function getEffected_Trains() {
        return $this->Effected_Trains;
    }

    function setTrain_No($Train_No) {
        $this->Train_No = $Train_No;
    }

    function setStarting_Station($Starting_Station) {
        $this->Starting_Station = $Starting_Station;
    }

    function setEnd_Station($End_Station) {
        $this->End_Station = $End_Station;
    }

    function setType($Type) {
        $this->Type = $Type;
    }

    function setStarting_Time($Starting_Time) {
        $this->Starting_Time = $Starting_Time;
    }

    function setEffected_Trains($Effected_Trains) {
        $this->Effected_Trains = $Effected_Trains;
    }


}