<?php echo $header; ?>
<?php include("postcodeForm.php");?>
<?php echo $column_left; ?>
<div id="content">
	<div id="home-wrapper">
		<?php CheckPostcode(); ?>
		<div id="facebook_login">
			<?php echo $column_right; ?>
		</div>
		<?php echo $content_top; ?>
	</div>
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
