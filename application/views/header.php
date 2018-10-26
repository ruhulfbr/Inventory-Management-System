<!DOCTYPE html>
<html>
<head>
	<title><?php if(isset($page_name)) {echo $page_name .' - Inventory Management System';} else echo "Dashboard - INVENTORY MANAGEMENT SYSTEM" ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Hello! I am Md.Ruhul Amin. I am 25 Years Old. I am a Professional Web Application Developer." />
    <meta name="keywords" content="ruhul, Amin, Imran, Raj, Md.Ruhul Amin, Md.Ruhul Amin Raj, Imran Raj, Designer, Web Designer, Frontend-developer, backend-Developer, web develper, php developer, codeigniter developer, javascript Developer, Dashboard Developer,Youtuber, owner of Tech Museum Bd,ruhul11bd@gmail.com,ruhulamin.imran" />

    <meta name="author" content="Md.Ruhul Amin" />
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/bootstrap/css/bootstrap.css'); ?>">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/font-awesome-4.7.0/css/font-awesome.css'); ?>">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/style.css')?>">
</head>
<body>
<header style="height: 60px; background: black; color: white;" class="">
	<?php
		$cur_date = date('l, F Y');
		if ($this->session->userdata('log_in')) {
			?>
			<p class="lead" style="float: right; padding-right: 15px; margin-top: 11px;"><?php echo $cur_date ?> | <?php echo $this->session->userdata('username') ?></p>
			<?php
		}
	?>
	
	<div style="padding-left: 20px; padding-top: 2px;">
		<h2 style="margin: 0">Sales & Inventory System</h2>
		<p style="margin: 0;">By : <a style="color: white;font-weight: bold;" href="http://ruhulamin.cf/" target="_blank">Md.Ruhul Amin</a></p>
	</div>
</header>
<div class="row" style="margin-bottom: -10px;">
<div class="container-fluid main-content" >




