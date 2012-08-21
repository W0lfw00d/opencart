<?php if(isset($_GET['route']) && strpos($_GET['route'],'product')!==false){ ?>
<div id="column-left">
	<?php if ($modules) { ?>
	  <?php foreach ($modules as $module) { ?>
	  <?php echo $module; ?>
	  <?php } ?>
	<?php } ?>
	
</div>
<?php } ?>