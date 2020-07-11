<?php
header('Content-Type: text/plain; charset=utf-8;');
session_start();
require_once('./includes/config.php');
require_once('./includes/classes.php');
$db = new mysqli($CONF['host'], $CONF['user'], $CONF['pass'], $CONF['name']);
if ($db->connect_errno) {
    echo "Failed to connect to MySQL: (" . $db->connect_errno . ") " . $db->connect_error;
}
$apiVersion = 1.1;

// Allowed $_GET['t'] values 
$types = array('u', 'm');

echo '{"apiVersion":"'.$apiVersion.'", "data": ';
if(in_array($_GET['t'], $types)) {
	if($_GET['t'] == 'u') {
		$result = $db->query(sprintf("SELECT `idu` as `id`, `username`, `first_name`, `last_name`, `website`, `location`, `image`, `cover`, `verified` FROM `users` WHERE `idu` = '%s' AND `private` = '0'", $db->real_escape_string($_GET['q'])));
		
		// Store the result
		$row = $result->fetch_assoc();
		
		// Output the result
		if(!empty($row)) {
			$row['image'] = $CONF['url'].'/thumb.php?src='.$row['image'].'&t=a&w=112&h=112';
			$row['cover'] = $CONF['url'].'/thumb.php?src='.$row['cover'].'&t=c&w=900&h=200';
			echo json_encode($row);
		} else {
			echo json_encode(array('error' => 'No data available for the selected user.'));
		}
	} elseif($_GET['t'] == 'm') {
		$result = $db->query(sprintf("SELECT `id`, `uid` as `by`, `message`, `type`, `time`, `likes` FROM `messages` WHERE `uid` = '%s' AND `public` = '1' ORDER BY `id` DESC", $db->real_escape_string($_GET['q'])));
		
		$rows = array();
		// Store the result
		while($row = $result->fetch_assoc()) {
			$rows[]	= $row; 
		}
		
		// Output the result
		if(!empty($rows)) {
			echo json_encode($rows);
		} else {
			echo json_encode(array('error' => 'No messages available'));
		}
	}
} else {
	echo json_encode(array('error' => 'You need to specify a valid \'t\' parameter'));
}
echo '}';
?>