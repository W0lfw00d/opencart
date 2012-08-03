<?php if(isset($_GET['route']) && strpos($_GET['route'],'product')!==false){ ?>
	<div id="column-right">
		<?php if ($modules) { ?>
		  <?php foreach ($modules as $module) { ?>
		  	<?php echo $module; ?>
		  <?php } ?>
		<?php } ?>
	  
	  <?php echo $cart; ?>
	</div>
<?php } ?>