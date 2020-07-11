<?php
error_reporting(0);
#error_reporting(E_ALL ^ E_NOTICE);

$CONF = $TMPL = array();

// Koneksi Ke Database
$CONF['host'] = 'localhost';
$CONF['user'] = 'root';
$CONF['pass'] = '';
$CONF['name'] = 'media_sosial';

// alamt Url Web
$CONF['url'] = 'http://localhost/hichat';

// Pemberitahuan email
$CONF['email'] = 'dwipanji8@gmail.com';

//  themes Penyimpanan
$CONF['theme_path'] = 'themes';

$action = array('admin'			=> 'admin',
				'feed'			=> 'feed',
				'settings'		=> 'settings',
				'messages'		=> 'messages',
				'post'			=> 'post',
				'recover'		=> 'recover',
				'timeline'		=> 'timeline',
				'profile'		=> 'profile',
				'notifications'	=> 'notifications',
				'search'		=> 'search',
				
				// Start the ToS pages
				'page'			=> 'page'
				);
?>