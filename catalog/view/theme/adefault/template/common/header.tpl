<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/adefault/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.carouFredSel-5.6.4-packed.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/adefault/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/adefault/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php echo $google_analytics; ?>
</head>
<body>
<div id="container">
<div id="header">
  <div id="logo">
    <a href="index.php"><img src="catalog/view/theme/adefault/image/logo.jpg" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
  </div>
  <div id="ideal">
    <img src="catalog/view/theme/adefault/image/ideal.png" title="iDEAL" alt="ideal" />
  </div>
  <?php echo $language; ?>
  <div id="header_text">
    <div id="top_header_text" class="darkGreen"><?php echo $header_delivery_1; ?><span class="sup"><?php echo $header_delivery_00_1; ?></span><?php echo $header_delivery_2; ?><span class="sup"><?php echo $header_delivery_00_2; ?></span></div>
    <div id="clock"><img width="120px" height="120px" src="catalog/view/theme/adefault/image/clock.jpg" alt="delivery times"/></div>
    <div id="bottom_header_text" class="lightGreen"><?php echo $header_delivered_in; ?></div>
  </div>
</div>
<?php 
  $route = "";
  if(isset($_GET['route'])){
    $route = $_GET['route'];
  }  
  if(strpos($route,'product')!==false){
    $main_menu_class = "step2";
  } elseif(strpos($route,'checkout')!==false) {
    $main_menu_class = "step3";
  } else {
    $main_menu_class = "step1";
  }
?>
<div id="main_menu">
  <ul class="<?php echo $main_menu_class; ?>">
    <li><a href="index.php"><?php echo $menu_home; ?></a></li>
    <li><a href="index.php?route=product/category&path=20"><?php echo $menu_category; ?></a></li>
    <li><a href="index.php?route=checkout/checkout"><?php echo $menu_checkout; ?></a></li>
  </ul>
</div>
<div id="notification"></div>