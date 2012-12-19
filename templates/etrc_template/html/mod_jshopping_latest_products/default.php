<div class="latest_products">
<?php 
$count = sizeof($last_prod);
foreach($last_prod as $curr){ ?>
   <div class="block_item">
       <?php if ($show_image) { ?>
       <div class="item_image">
           <a href="<?php print $curr->product_link?>"><img src = "<?php print $jshopConfig->image_product_live_path?>/<?php if ($curr->product_thumb_image) print $curr->product_thumb_image; else print $noimage?>" alt="" /></a>
       </div>
       <?php } ?>
       <div class="item_name">
           <a href="<?php print $curr->product_link?>"><?php print $curr->name?></a>
       </div>
       <?php if ($curr->_display_price){?>
       <div class="item_price">
           <?php print formatprice($curr->product_price);?>
       </div>
       <?php }?>
   </div>       
<?php } ?>
</div>
<div style="text-align: left">
<a class="button-primary" href="index.php/products">See All &#187;</a>
</div>
<script>
jQuery(document).ready(function($) {
	var w = $('.latest_products').width();
	$('.latest_products > .block_item').width(Math.floor((w-20)/<?php echo $count; ?>));
});
</script>