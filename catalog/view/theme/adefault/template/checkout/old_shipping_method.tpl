<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($shipping_methods) { ?>
<p><?php echo $text_shipping_method; ?></p>
<table class="radio">
  <?php foreach ($shipping_methods as $shipping_method) { ?>
  <tr>
    <td colspan="3"><b><?php echo $shipping_method['title']; ?></b></td>
  </tr>
  <?php if (!$shipping_method['error']) { ?>  
  <?php foreach ($shipping_method['quote'] as $quote) { ?>
  <tr class="highlight">
    <td><?php if ($quote['code'] == $code || !$code) { ?>
      <?php $code = $quote['code']; ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" />
      <?php } ?></td>
    <td><label for="<?php echo $quote['code']; ?>"><?php echo $quote['title']; ?></label></td>
    <td style="text-align: right;"><label for="<?php echo $quote['code']; ?>"><?php echo $quote['text']; ?></label></td>	
  </tr>
  <?php $shipping_code_exploded = explode('.', $quote['code']); ?>
  <?php if ((!empty($shipping_code_exploded[0]) && (int)$this->config->get($shipping_code_exploded[0] . '_based_date') == 1) || (empty($shipping_code_exploded[0]) && (int)$this->config->get($this->config->get($quote['code'] . '_based_date') == 1))) { ?>
	<?php $date_delivery_check[] = true; ?>
  <?php } ?>
  <?php } ?>
  <?php if (in_array(true, $date_delivery_check)) { ?>  
	<tr>
		<td><?php echo $text_based_date; ?><input type="text" name="date_delivery" value="<?php echo (!empty($date_delivery)) ? $date_delivery : date('Y-m-d'); ?>" id="date-delivery" size="12" /></td>
	</tr>  
  <?php } ?>
  <?php } else { ?>
  <tr>
    <td colspan="3"><div class="error"><?php echo $shipping_method['error']; ?></div></td>
  </tr>
  <?php } ?>
  <?php } ?>
</table>
<br />
<?php } ?>
<b><?php echo $text_comments; ?></b>
<textarea name="comment" rows="8" style="width: 98%;"><?php echo $comment; ?></textarea>
<br />
<br />
<div class="buttons">
  <div class="right">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-shipping-method" class="button" />
  </div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#date-delivery').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script> 
