<div id="car-banner">
    <img src="catalog/view/theme/adefault/image/glasses.png"/>
</div>
<div id="footer">
  <div class="column">
    <ul>
      <?php foreach ($informations as $information) { 
        ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <div class="call-us">
    <h1><?php echo $call_and; ?> <span class="lightGreen"><?php echo $drink; ?></span><?php echo $door; ?></h1>
    <p><?php echo $phone_number; ?></p>
  </div>
  <div id="no_alcohol">
    <img src="catalog/view/theme/adefault/image/<?php echo $no_alcohol_image; ?>" title="<?php echo $no_alcohol_title; ?>" alt="<?php echo $no_alcohol_alt; ?>" />
  </div>
  <div id="social_media">
    <a href="http://www.facebook.com//drinkdoor">
      <img src="catalog/view/theme/adefault/image/facebook.png" title="facebook" alt="facebook" />
    </a>
    <a href="http://www.twitter.com/drinkdoor">
      <img src="catalog/view/theme/adefault/image/twitter.png" title="twitter" alt="twitter" />
    </a>
    <a href="http://www.youtube.com/drinkdoor">
      <img src="catalog/view/theme/adefault/image/youtube.png" title="youtube" alt="youtube" />
    </a>
  </div>
</div>
</body></html>