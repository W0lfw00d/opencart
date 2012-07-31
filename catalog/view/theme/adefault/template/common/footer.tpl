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
    <h1>Bel ons!</h1>
    <p>06-12345678</p>
  </div>
</div>
</body></html>