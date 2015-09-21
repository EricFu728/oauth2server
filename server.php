<?php

//database configuration
$dsn      = 'mysql:dbname=oauth2server;host=localhost';
$username = 'root';
$password = 'root';
 
ini_set('display_errors',1);error_reporting(E_ALL);
 
require_once('src/OAuth2/Autoloader.php');
OAuth2\Autoloader::register();
 
$storage = new OAuth2\Storage\Pdo(array('dsn' => $dsn, 'username' => $username, 'password' => $password));
 
// Pass a storage object or array of storage objects to the OAuth2 server class
$server = new OAuth2\Server($storage);
 
// Add the "Client Credentials" grant type
$server->addGrantType(new OAuth2\GrantType\ClientCredentials($storage));
 
// Add the "Authorization Code" grant type
$server->addGrantType(new OAuth2\GrantType\AuthorizationCode($storage));

//Add the "Refresh Token" grant type
$server->addGrantType(new OAuth2\GrantType\RefreshToken($storage,array('always_issue_new_refresh_token'=>true)));