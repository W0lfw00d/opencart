<?php
function DisplayForm($postCode, $errors, $okMessage)
{
?>
	<div id="home-wrapper">
		<div class="box" id="zipcode">
		  <div class="box-heading"><?php echo $_SESSION['postcode_title'];?></div>
			<div class="box-content">
				<div class="box-product">
						<form action="<?= $_SERVER['PHP_SELF'] ?>" method="POST"> 						
						<table border="0" width="100%">
							<tbody>								
								<tr>
									<td >										
										<?php 
										if(isset($_SESSION['doPostCode']) && ($_SESSION['doPostCode'] == 'true')){	
											$_SESSION['doPostCode']='';?>
												<div class="error" style="border-bottom: 1px solid #DBDEE1;"> <?php echo $_SESSION['postcode_warning'];?>:</div>
										<?php }
										else {	
											if (isset($errors['postcode']) && $errors['postcode'] != ''){?>   	
												<div class="error" style="border-bottom: 1px solid #DBDEE1;"><?= $errors['postcode'] ?> </div>
											<?php 	}
											else { 
												if ($okMessage != ''){	?>
												<div class="name" style="border-bottom: 1px solid #DBDEE1;"><?= $okMessage ?> </div>
											<?php 	}
												else {	?>   
													<div class="name" style="border-bottom: 1px solid #DBDEE1;"> <?php echo $_SESSION['postcode_text'];?></div>						
											<?php }
											}
										}?>  
									</td>
								</tr>
								<tr>
									<td style="padding: 10px 0;">
										<?php if (strlen($postCode) > 0) { ?>
											<input type="text" MAXLENGTH="4" size="14" placeholder="<?php echo $_SESSION['postcode_example'];?>" value="<?= htmlentities($postCode) ?>" name="postcode" style="font-size: 20px; height: 26px;">
										<?php } 
											else  { ?>
											<input type="text" MAXLENGTH="4" size="14" placeholder="<?php echo $_SESSION['postcode_example'];?>" name="postcode" style="font-size: 20px; height: 26px;">
										<?php } ?>
									</td>
								</tr>
								<tr>
									<td >	
										<input type="submit"  value="<?php echo $_SESSION['postcode_submit'];?>" style="background-color:#999999; color:#FFFFFF; cursor: pointer; font-size: 20px; height: 36px;">
									</td>
								</tr>
							</tbody>
						</table>												
					</form> 
				</div>
			</div>
		</div>
	</div>
<?php
}
function CheckPostcode(){
	$showError='';
	$okMessage='';
	$errors = array();
	$intPostcode;
	if(isset($_POST['postcode'])){
		$intPostcode = $_POST['postcode'];
		$showError= 'true';
	}
	else {
		if(isset($_SESSION['postcode'])) {
			$intPostcode = (int)$_SESSION['postcode'];	
			$showError= 'true';
		}
	}

	if ( isset($intPostcode) && $intPostcode >= 5600 && $intPostcode < 5800 ){	
		$errors['postcode'] = '';
		$okMessage = 'We bezorgen in uw regio. Uw postcode is '.$intPostcode.'. Klik op menu om te winkelen.';
		$_SESSION['postcode_is_valid'] ='true';
		DisplayForm($intPostcode, $errors,$okMessage);
	}	
	else
	{	
		$_SESSION['postcode_is_valid'] ='';
		if ($showError=='true'){
			if (strlen($intPostcode) < 4)
				$errors['postcode'] = 'Postcode is te kort';
			else if (strlen($intPostcode) > 4)
				$errors['postcode'] = 'Postcode is te lang';
			else 
				$errors['postcode'] = 'Wij bieden geen ondersteuning op deze regio';
			DisplayForm($intPostcode, $errors,$okMessage);
		}
		else {
			$errors['postcode'] = '';
			if(isset($intPostcode)){
				DisplayForm($intPostcode, $errors,$okMessage);
			}
			else {
				DisplayForm('', $errors,$okMessage);
			}
		}
	}
}
?>