<!--<h2><?php echo $text_header; ?></h2>-->
<div id="sisowmc_payment" class="<?php echo substr(VERSION, 0, 3) == '1.4' ? '' : 'checkout-'; ?>content">
  <img src="https://www.sisow.nl/Sisow/images/ideal/mister.gif" border="0" />
</div>
<div class="buttons">
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
  <table>
    <tr>
      <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
      <td align="right"><a id="sisowmc_confirm" class="button"><span><?php echo $button_confirm; ?></span></a></td>  
    </tr>
  </table>
<?php } else { ?>
  <div class="right"><a id="sisowmc_confirm" class="button"><span><?php echo $button_confirm; ?></span></a></div>  
<?php } ?>
</div>
<script type="text/javascript"><!--
function sisowmc_click() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=payment/sisowmc/redirectbank',
		data: $('#sisowmc_payment :input'),
		dataType: 'json',
		error: function() {
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
			$('.wait').remove();
<?php } else { ?>
			$('.attention').remove();
<?php } ?>
			alert('error');
			$('#sisowmc_confirm').attr('disabled', false);
		},
		beforeSend: function() {
			$('#sisowmc_confirm').attr('disabled', true);
			$('#sisowmc_confirm').unbind();
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
			$('#sisowmc_payment').before('<div class="wait"><img src="catalog/view/theme/default/image/loading_1.gif" alt="" /><?php echo $text_redirect; ?></div>');
<?php } else { ?>
			$('#sisowmc_payment').before('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /><?php echo $text_redirect; ?></div>');
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
				$('#sisowmc_confirm').attr('disabled', false);
				$('#sisowmc_confirm').bind('click', sisowmc_click);
			}
			if (json['success']) {
				location = json['success'];
			}
		}
	});
}
$('#sisowmc_confirm').bind('click', sisowmc_click);
//--></script> 
