<?php
/**
 * resource file 
 * GET username,access_token
 */
require_once __DIR__.'/server.php';
$request = OAuth2\Request::createFromGlobals();
if (!$server->verifyResourceRequest(OAuth2\Request::createFromGlobals())) {
    $server->getResponse()->send();
    die;
}
$userInfo = $storage->getUser($request->request['username']);
$resource = array('message'=>'You can access protected resource','info'=>$userInfo);
echo json_encode($resource);
