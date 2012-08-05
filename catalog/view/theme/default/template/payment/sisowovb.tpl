<!--<h2><?php echo $text_header; ?></h2>-->
<div id="sisowovb_payment" class="<?php echo substr(VERSION, 0, 3) == '1.4' ? '' : 'checkout-'; ?>content">
  <img src="https://www.sisow.nl/Sisow/images/ideal/logo_sisow_klein.png" alt="Sisow OverBoeking" title="Sisow OverBoeking" style="vertical-align: middle;" />
  <br/><br/>
  <?php echo $text_ovb; ?>
</div>
<div class="buttons">
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
  <table>
    <tr>
      <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
      <td align="right"><a id="sisowovb_confirm" class="button"><span><?php echo $button_confirm; ?></span></a></td>  
    </tr>
  </table>
<?php } else { ?>
  <div class="right"><a id="sisowovb_confirm" class="button"><span><?php echo $button_confirm; ?></span></a></div>  
<?php } ?>
</div>
<script type="text/javascript"><!--
function sisowovb_click() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=payment/sisowovb/redirectbank',
		data: $('#sisowovb_payment :input'),
		dataType: 'json',
		error: function() {
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
			$('.wait').remove();
<?php } else { ?>
			$('.attention').remove();
<?php } ?>
			alert('error');
			$('#sisowovb_confirm').attr('disabled', false);
		},
		beforeSend: function() {
			$('#sisowovb_confirm').attr('disabled', true);
			$('#sisowovb_confirm').unbind();
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
			$('#sisowovb_payment').before('<div class="wait"><img src="catalog/view/theme/default/image/loading_1.gif" alt="" /><?php echo $text_redirect; ?></div>');
<?php } else { ?>
			$('#sisowovb_payment').before('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /><?php echo $text_redirect; ?></div>');
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
				$('#sisowovb_confirm').attr('disabled', false);
				$('#sisowovb_confirm').bind('click', sisowovb_click);
			}
			if (json['success']) {
				location = json['success'];
			}
		}
	});
}
$('#sisowovb_confirm').bind('click', sisowovb_click);
//--></script> 
