<!--<h2><?php echo $text_header; ?></h2>-->
<div id="sisowecare_payment" class="<?php echo substr(VERSION, 0, 3) == '1.4' ? '' : 'checkout-'; ?>content">
  <img src="https://www.sisow.nl/Sisow/images/ideal/logo_ecare_smal.gif" alt="Sisow ecare" title="Sisow ecare" style="vertical-align: middle;" />
  <br/><br/>
  <?php echo $text_description; ?>
  <br/>
  Aanhef&nbsp;&nbsp;<select name="sisowgender">
    <option value="">Kies aanhef</option>
	<option value="M">De heer</option>
	<option value="F">Mevrouw</option>
  </select>
  <br/><br/>
  Voorletter(s)&nbsp;&nbsp;<input type="text" id="sisowinitials" name="sisowinitials" style="width: 60px;" maxlength="6" value="<?php echo $text_initial; ?>" />
  <br/><br/>
  Geboortedatum (DD MM JJJJ)&nbsp;&nbsp;
  <input type="text" id="sisowday" name="sisowday" style="width: 25px;" maxlength="2" />
  <input type="text" id="sisowmonth" name="sisowmonth" style="width: 25px;" maxlength="2" />
  <input type="text" id="sisowyear" name="sisowyear" style="width: 50px;" maxlength="4" />
  <?php echo $text_paymentfee; ?>
  <br/><br/>
  <a href="http://www.sisow.nl/downloads/Betalingsvoorwaarden_ecare.pdf" target="_blank">Betalingsvoorwaarden</a>
</div>
<div class="buttons">
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
  <table>
    <tr>
      <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
      <td align="right"><a id="sisowecare_confirm" class="button"><span><?php echo $button_confirm; ?></span></a></td>  
    </tr>
  </table>
<?php } else { ?>
  <div class="right"><a id="sisowecare_confirm" class="button"><span><?php echo $button_confirm; ?></span></a></div>  
<?php } ?>
</div>
<script type="text/javascript"><!--
function sisowecare_click() {
	$.ajax({
		type: 'POST',
		timeout: 90000,
		url: 'index.php?route=payment/sisowecare/redirectbank',
		data: $('#sisowecare_payment :input'),
		dataType: 'json',
		error: function(par1, par2) {
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
			$('.wait').remove();
<?php } else { ?>
			$('.attention').remove();
<?php } ?>
			alert('error ' + par2);
			$('#sisowecare_confirm').attr('disabled', false);
		},
		beforeSend: function() {
			$('#sisowecare_confirm').attr('disabled', true);
			$('#sisowecare_confirm').unbind();
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
			$('#sisowecare_payment').before('<div class="wait"><img src="catalog/view/theme/default/image/loading_1.gif" alt="" /><?php echo $text_redirect; ?></div>');
<?php } else { ?>
			$('#sisowecare_payment').before('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /><?php echo $text_redirect; ?></div>');
<?php } ?>
		},
		success: function(json) {
			if (json['error']) {
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
				$('.wait').remove();
<?php } else { ?>
				$('.attention').remove();
<?php } ?>
				alert(json['error']);
				$('#sisowecare_confirm').attr('disabled', false);
				$('#sisowecare_confirm').bind('click', sisowecare_click);
			}
			if (json['success']) {
				location = json['success'];
			}
		}
	});
}
$('#sisowecare_confirm').bind('click', sisowecare_click);
//--></script> 
