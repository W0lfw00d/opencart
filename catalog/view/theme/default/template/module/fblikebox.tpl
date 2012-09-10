<?php if ($position == 'content_top'  or $position == 'content_bottom') { ?>
  <iframe src="//www.facebook.com/plugins/likebox.php?href=<?php echo $fblikeboxcode; ?>&amp;width=575&amp;height=260&amp;colorscheme=light&amp;connections=20&amp;show_faces=true&amp;border_color&amp;stream=false&amp;header=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:575px; height:260px;" allowTransparency="true"></iframe>
<?php } else { ?>
  <iframe src="//www.facebook.com/plugins/likebox.php?href=<?php echo $fblikeboxcode; ?>&amp;width=220&amp;height=320&amp;colorscheme=light&amp;connections=12&amp;show_faces=true&amp;border_color&amp;stream=false&amp;header=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:210px; height:320px;" allowTransparency="true"></iframe>
<?php } ?>

