
<?php if (count($languages) > 0) { ?>
<div id="language">
        <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="language_form">
            <?php foreach ($languages as $language) { ?>
            <div class="option">
              <a onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#language_form').submit();">
                <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" />
              </a>
            </div>
            <?php } ?>
          <div>
            <input type="hidden" name="language_code" value="" />
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          </div>
        </form>
</div>
<?php } ?>