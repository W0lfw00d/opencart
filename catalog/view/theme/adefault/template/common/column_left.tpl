<?php if(isset($_GET['route']) && strpos($_GET['route'],'product')!==false){ ?>
<div id="column-left">
	<?php if ($modules) { ?>
	  <?php foreach ($modules as $module) { ?>
	  <?php echo $module; ?>
	  <?php } ?>
		<div class="box static">
		  <div class="box-content">
		      <img src="http://localhost/opencart/image/cache/data/iphone_2-74x74.jpg"/>
		  </div>
		  <div class="box-content">
		      16, geen alcohol<br/>
		      18, geen sterke drank
		  </div>
		  <div class="box-content">
		      Bezorgtijden
		  </div>
		</div>
	<?php } ?> 
</div>
<?php } ?> 
