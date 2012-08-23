<?php echo $header; ?>
<?php include("postcodeForm.php");?>
<?php echo $column_left; ?>
<?php echo $column_right; ?>
<div id="content">

<?php	CheckPostcode(); ?>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="fb-like-box" data-href="http://www.facebook.com/gadget4me" data-width="242"  data-colorscheme="dark" data-show-faces="true" data-border-color="lightgrey" data-stream="true" data-header="true" style="background-color:#0F6939;"></div>

<?php echo $content_top; ?>
</div>

<script type="text/javascript">
/*	CarouFredSel: an infinite, circular jQuery carousel.
	Configuration created by the "Configuration Robot"
	at caroufredsel.frebsite.nl
*/
$(".product-grid.home").carouFredSel({
	width: 554,
	align: false,
	height: 283,
	marginBottom: 5,
	items: {
		visible: 3,
		start: "random",
		width: "auto",
		height: 282,
		padding: [20, 20, 20, 20]
	},
	scroll: {
		pauseOnHover: true
	},
	auto: {
		delay: 800
	}
});
</script>
<?php echo $footer; ?>
