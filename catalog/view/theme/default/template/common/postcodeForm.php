<?php
function DisplayForm($postCode, $errors, $okMessage)
{
?>
	<div class="box">
	  <div class="box-heading">Postcode</div>
		<div class="box-content">
		<div class="box-product">
				<div>
					<form action="<?= $_SERVER['PHP_SELF'] ?>" method="POST">    
						<div class="name"> Vul de vier cijfers van uw postcode in:</div>
						<div ><input type="text" size="30" name="postcode" MAXLENGTH="4" value="<?= htmlentities($postCode) ?>"/></div>
						<div class="error"><?= $errors['postcode'] ?> </div>
						<div class="name"><?= $okMessage ?> </div>
						<div><input type="submit" value="Postcode controleren"></div>
					</form>    
				</div>
		</div>
		</div>
	</div>
	
	<div class="box">
	  <div class="box-heading">Flevoland</div>
		<div class="box-content">
		<div class="box-product">            
				<div>
					<IMG SRC="../../catalog/view/theme/default/image/nederland.png"><IMG SRC="../../catalog/view/theme/default/image/wijn.png">
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
	$intPostcode =0;
	if(isset($_SESSION['postcode'])){
		$intPostcode = $_SESSION['postcode'];
		$showError= 'true';
	}
	else {
		$intPostcode = (int)$_POST['postcode'];	
		$showError= 'true';
	}

	if ( $intPostcode >= 5600 && $intPostcode < 5800 )
	{	
		$errors['postcode'] = '';
		$okMessage = 'We bezorgen in uw regio. Uw postcode is '.$intPostcode.'. Klik op menu om te winkelen.';
		DisplayForm($intPostcode, $errors,$okMessage);
	}	
	else
	{	
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
			DisplayForm($intPostcode, $errors,$okMessage);
		}
	}
}
?>