<?php if(isset($_GET['route']) && strpos($_GET['route'],'product')!==false){ ?>
<div id="column-left">
	<?php if ($modules) { ?>
	  <?php foreach ($modules as $module) { ?>
	  <?php echo $module; ?>
	  <?php } ?>
	<?php } ?>
	<div class="box static">
	  <div class="box-content">
	      <img src="catalog/view/theme/default/image/iphone_2-74x74.jpg"/>
	  </div>
	  <div class="box-content">			<?php echo $_SESSION['left_no_alcohol'];?>
	  </div>
	  <div class="box-content">			<?php echo $_SESSION['left_delivery_time'];?>
	  </div>
	</div> 
</div>
<?php } ?>