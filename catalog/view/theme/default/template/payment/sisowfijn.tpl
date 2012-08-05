<!--<h2><?php echo $text_header; ?></h2>-->
<div id="sisowfijn_payment" class="<?php echo substr(VERSION, 0, 3) == '1.4' ? '' : 'checkout-'; ?>content">
  <img src="https://www.sisow.nl/Sisow/images/ideal/fijncadeau.gif" border="0" />
</div>
<div class="buttons">
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
  <table>
    <tr>
      <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
      <td align="right"><a id="sisowfijn_confirm" class="button"><span><?php echo $button_confirm; ?></span></a></td>  
    </tr>
  </table>
<?php } else { ?>
  <div class="right"><a id="sisowfijn_confirm" class="button"><span><?php echo $button_confirm; ?></span></a></div>  
<?php } ?>
</div>
<script type="text/javascript"><!--
function sisowfijn_click() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=payment/sisowfijn/redirectbank',
		data: $('#sisowfijn_payment :input'),
		dataType: 'json',
		error: function() {
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
			$('.wait').remove();
<?php } else { ?>
			$('.attention').remove();
<?php } ?>
			alert('error');
			$('#sisowfijn_confirm').attr('disabled', false);
		},
		beforeSend: function() {
			$('#sisowfijn_confirm').attr('disabled', true);
			$('#sisowfijn_confirm').unbind();
<?php if (substr(VERSION, 0, 3) == '1.4') { ?>
			$('#sisowfijn_payment').before('<div class="wait"><img src="catalog/view/theme/default/image/loading_1.gif" alt="" /><?php echo $text_redirect; ?></div>');
<?php } else { ?>
			$('#sisowfijn_payment').before('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /><?php echo $text_redirect; ?></div>');
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
				$('#sisowfijn_confirm').attr('disabled', false);
				$('#sisowfijn_confirm').bind('click', sisowfijn_click);
			}
			if (json['success']) {
				location = json['success'];
			}
		}
	});
}
$('#sisowfijn_confirm').bind('click', sisowfijn_click);
//--></script> 
