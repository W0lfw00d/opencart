<?php echo $header; ?>
<?php include("postcodeForm.php");?><?php include("mapAndWine.php");?>
<?php echo $column_left; ?>
<?php echo $column_right; ?>

<div id="content">

<?php							
CheckPostcode();
?>
<?php	
DisplayMapAndWine();
?>

	<div id="car-banner">
		<img src="catalog/view/theme/adefault/image/car.jpg"/>
	</div>
</div>
<?php echo $footer; ?>