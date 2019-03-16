<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['login']= 'page/login';
$route['welcome']= 'welcome';

$route['(:any)']= 'page';
$route['default_controller'] = 'page';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
