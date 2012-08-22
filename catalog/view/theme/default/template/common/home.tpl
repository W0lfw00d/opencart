<?php echo $header; 
include("postcodeForm.php");?>
A<?php echo $column_left; ?>B<?php echo $column_right; ?>C
<div id="content"> D<?php echo $content_top; ?>E
<h1 style="display: none;"><?php echo $heading_title; ?></h1>
F
<?php	
CheckPostcode();
?>




<?php echo $content_bottom; ?></div>
<?php echo $footer; ?>