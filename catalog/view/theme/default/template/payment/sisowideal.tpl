<!--<h2><?php echo $text_header; ?></h2>-->
<div id="sisowideal_payment" class="<?php echo substr(VERSION, 0, 3) == '1.4' ? '' : 'checkout-'; ?>content">
  <img src="https://www.sisow.nl/Sisow/images/ideal/idealklein.gif" alt="iDEAL" title="iDEAL" style="vertical-align: middle;" />
  <?php echo $text_bank; ?>
  &nbsp;
  <select id="sisowbank" name="sisowbank">
    <option value="">Kies uw bank...</option>
<?php foreach ($banks as $bankid => $bankname) { ?>
    <option value="<?php echo $bankid; ?>"><?php echo $bankname; ?></option>
<?php } ?>
  </select>
</div>
<div class="buttons">
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
  <table>
    <tr>
      <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
      <td align="right"><a id="sisowideal_confirm" class="button"><span><?php echo $button_confirm; ?></span></a></td>  
    </tr>
  </table>
<?php } else { ?>
  <div class="right"><a id="sisowideal_confirm" class="button"><span><?php echo $button_confirm; ?></span></a></div>  
<?php } ?>
</div>
<script type="text/javascript"><!--
function sisowideal_click() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=payment/sisowideal/redirectbank',
		data: $('#sisowideal_payment :input'),
		dataType: 'json',
		error: function() {
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
			$('.wait').remove();
<?php } else { ?>
			$('.attention').remove();
<?php } ?>
			alert('error');
			$('#sisowideal_confirm').attr('disabled', false);
		},
		beforeSend: function() {
			$('#sisowideal_confirm').attr('disabled', true);
			$('#sisowideal_confirm').unbind();
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
			$('#sisowideal_payment').before('<div class="wait"><img src="catalog/view/theme/default/image/loading_1.gif" alt="" /><?php echo $text_redirect; ?></div>');
<?php } else { ?>
			$('#sisowideal_payment').before('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /><?php echo $text_redirect; ?></div>');
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
				$('#sisowideal_confirm').attr('disabled', false);
				$('#sisowideal_confirm').bind('click', sisowideal_click);
			}
			if (json['success']) {
				location = json['success'];
			}
		}
	});
}
$('#sisowideal_confirm').bind('click', sisowideal_click);
//--></script> 
