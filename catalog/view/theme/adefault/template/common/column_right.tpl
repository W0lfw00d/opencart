<div id="column-right">
	<?php if ($modules) { ?>
	  <?php foreach ($modules as $module) { ?>
	  	<?php echo $module; ?>
	  <?php } ?>
	<?php } ?>
  
  <?php 
if(strpos($_GET['route'],'product')!==false)
  echo $cart; ?>
</div>