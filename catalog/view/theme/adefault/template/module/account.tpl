<div class="box">
  <div class="box-content">		      <?php if (!$logged) { ?>	  <div class="right">		  <h2><?php echo $text_returning_customer; ?></h2>		  
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">			
	  <div class="content" style="padding:0px; margin-bottom:0px;border:0px">			  
			<b><?php echo $entry_email; ?></b><br />			  
			<input type="text" name="email" value="<?php echo $email; ?>" />			  <br />			  <br />			  
			<b><?php echo $entry_password; ?></b><br />			  
			<input type="password" name="password" value="<?php echo $password; ?>" />			  
			<br />			  
			<a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />			  <br />			  
			<input type="submit" value="<?php echo $button_login; ?>" class="button" />			  
			<?php if ($redirect) { ?>			  
			<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />			  
			<?php } ?>			
	  </div>		  
	</form>		</div>      
	<?php } ?>
   <div class="box-category">
    <ul>
      <?php if ($logged) { ?>
      <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
      <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
      <?php } ?>
      <?php if ($logged) { ?>
      <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
      <?php } ?>
    </ul>
  </div>
</div>
</div>