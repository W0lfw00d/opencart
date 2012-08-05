<?php echo $header; ?>
<?php include("postcodeForm.php");?>
<?php echo $column_left; ?>
<?php echo $column_right; ?>

<div id="content"><?php echo $content_top; ?>
<h1 style="display: none;"><?php echo $heading_title; ?></h1>

<?php	
CheckPostcode();
?>

<?php echo $content_bottom; ?></div>
<?php echo $footer; ?>