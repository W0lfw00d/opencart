<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  <div class="top">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center">
      <h1><?php echo $heading_title; ?></h1>
    </div>
  </div>
  <div class="middle">
    <?php if ($error_warning) { ?>
    <div class="warning"><?php echo $error_warning; ?></div>
    <?php } ?>
    <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="shipping">
      <b style="margin-bottom: 2px; display: block;"><?php echo $text_shipping_address; ?></b>
      <div class="content">
        <table width="100%">
          <tr>
            <td width="50%" valign="top"><?php echo $text_shipping_to; ?><br />
              <br />
              <div style="text-align: center;"><a onclick="location = '<?php echo str_replace('&', '&amp;', $change_address); ?>'" class="button"><span><?php echo $button_change_address; ?></span></a></div></td>
            <td width="50%" valign="top"><b><?php echo $text_shipping_address; ?></b><br />
              <?php echo $address; ?></td>
          </tr>
        </table>
      </div>
      <?php if ($shipping_methods) { ?>
      <b style="margin-bottom: 2px; display: block;"><?php echo $text_shipping_method; ?></b>
      <div class="content">
        <p><?php echo $text_shipping_methods; ?></p>
        <table width="100%" cellpadding="3">
          <?php foreach ($shipping_methods as $shipping_method) { ?>
          <tr>
            <td colspan="3"><b><?php echo $shipping_method['title']; ?></b></td>
          </tr>
          <?php if (!$shipping_method['error']) { ?>
          <?php foreach ($shipping_method['quote'] as $quote) { ?>
          <tr>
            <td width="1"><label for="<?php echo $quote['id']; ?>">
                <?php if ($quote['id'] == $shipping || !$shipping) { ?>
				<?php $shipping = $quote['id']; ?>
                <input type="radio" name="shipping_method" value="<?php echo $quote['id']; ?>" id="<?php echo $quote['id']; ?>" checked="checked" style="margin: 0px;" />
                <?php } else { ?>
                <input type="radio" name="shipping_method" value="<?php echo $quote['id']; ?>" id="<?php echo $quote['id']; ?>" style="margin: 0px;" />
                <?php } ?>
              </label></td>
            <td width="534"><label for="<?php echo $quote['id']; ?>" style="cursor: pointer;"><?php echo $quote['title']; ?></label></td>
            <td width="1" align="right"><label for="<?php echo $quote['id']; ?>" style="cursor: pointer;"><?php echo $quote['text']; ?></label></td>
          </tr>
          <?php } ?>
          <?php } else { ?>
          <tr>
            <td colspan="3"><div class="error"><?php echo $shipping_method['error']; ?></div></td>
          </tr>
          <?php } ?>
          <?php } ?>
        </table>
      </div>
      
      <!-- Mod Delivery Date -->
	  <?php if ($deliverydate_status) { ?>
      <b style="margin-bottom: 2px; display: block;"><?php echo $text_deliverydate; ?></b>
      <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 10px;">
        <p><?php echo $text_delivery; ?></p>
        <table width="536" cellpadding="3">
          <tr>
          	<td width="120"><?php echo $entry_deliverydate; ?></td>
            <td><input type="text" name="deliverydate" value="<?php echo $deliverydate; ?>" size="12" class="deliverydate" /></td>
          </tr>
          <?php if ($deliverydate_same_day) { ?>
          <tr>
            <td colspan="2"><?php echo $text_unavailable_after; ?></td>
          </tr>
          <?php } ?>
      <?php } ?>     
        </table>
      </div>
      <!-- End:Mod Delivery Date -->
      
      <?php } ?>
      <b style="margin-bottom: 2px; display: block;"><?php echo $text_comments; ?></b>
      <div class="content">
        <textarea name="comment" rows="8" style="width: 99%;"><?php echo $comment; ?></textarea>
      </div>

      <div class="buttons">
        <table>
          <tr>
            <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
            <td align="right"><a onclick="$('#shipping').submit();" class="button"><span><?php echo $button_continue; ?></span></a></td>
          </tr>
        </table>
      </div>
    </form>
  </div>
  <div class="bottom">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center"></div>
  </div>
</div>
<!-- Mod Delivery Date -->
<?php if ($deliverydate_status) { ?>
<link rel="stylesheet" type="text/css" href="./admin/view/javascript/jquery/ui/themes/ui-lightness/ui.all.css" />
<script type="text/javascript" src="./admin/view/javascript/jquery/ui/ui.datepicker.js"></script>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.deliverydate').datepicker({dateFormat: 'yy-mm-dd', minDate: '+<?php echo $deliverydate_interval_days; ?>d'<?php if ($deliverydate_noweekends) { ?>, beforeShowDay: $.datepicker.noWeekends<?php } ?>});
});
//--></script>
<?php } ?>
<!-- End:Mod Delivery Date -->
<?php echo $footer; ?> 