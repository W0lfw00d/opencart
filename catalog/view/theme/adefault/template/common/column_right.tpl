<?php if(!isset($_GET['route']) || (isset($_GET['route']) && strpos($_GET['route'],'product')!==false))	{ 
	if(isset($_GET['route']) && $_GET['route']!='common/home') { ?>
		<div id="column-right">
	<?php } ?>
		<?php if ($modules) { ?>
		  <?php foreach ($modules as $module) { ?>
		  	<?php echo $module; ?>
		  <?php } ?>
		<?php } ?>
	  
	  <?php if(isset($_GET['route']) && $_GET['route']!='common/home') {
	  	echo $cart;
	  ?>
	</div>
	<?php } ?>
<?php } ?>