<?php
namespace App\Http\Controller;

class TestController extends Controller{
    public function index(){
        return [
            "code"=>0,
            "data"=> 'we have data!',
            "msg"=>'Welcome to you!'
        ];
    }
}