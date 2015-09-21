<?php


// include our OAuth2 Server object
require_once __DIR__.'/server.php';
 
$request = OAuth2\Request::createFromGlobals();
//print_r($request);exit;
$response = new OAuth2\Response();
 
// validate the authorize request
if (!$server->validateAuthorizeRequest($request, $response)) {
    $response->send();
    die;
}

if (empty($_POST)) {
  exit('
<form method="post">
  <label>Do You Authorize TestClient?</label><br />
  <input type="text" name="username">
  <input type="text" name="password">
  <input type="submit" name="authorized" value="yes">
  <input type="submit" name="authorized" value="no">
</form>');
}
 
// print the authorization code if the user has authorized your client
$is_authorized = ($_POST['authorized'] === 'yes');
//username & password
$username = $_POST['username'];
$password = $_POST['password'];
if(!$storage->checkUserCredentials($username,$password)) {
    print_r($request);exit;
}
//set state in session
$_SESSION['state'] = urldecode($_GET['state']);
$server->handleAuthorizeRequest($request, $response, $is_authorized);
if ($is_authorized) {
  $code = substr($response->getHttpHeader('Location'), strpos($response->getHttpHeader('Location'), 'code=')+5, 40);
  //exit(json_encode(array('message'=>'SUCCESS','code'=>$code,'username'=>$request->request['username'])));
  //exit("SUCCESS! Authorization Code: $code username:".$request->request['username']);

  header('Location:'.$request->query['redirect_uri'].'?code='.$code.'&grant_type=authorization_code&username='.$request->request['username']."&state=".urlencode($_SESSION['state']));exit;
}
$response->send();