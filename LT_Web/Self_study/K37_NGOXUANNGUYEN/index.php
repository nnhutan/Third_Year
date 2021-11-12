<?php 
	include 'inc/header.php';
	include 'inc/slider.php';
?>
<style>
	.images_1_of_4 .button a {
		padding: 10px;
  
    background: #602D8D;
    color: #fff;
	}
</style>
 <div class="main">

    <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>Sản phẩm mới nhất của SHOP</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
	      <div class="section group">


	      	<?php 
	      	$product_featheread = $product->getproduct_featheread();
	      	if ($product_featheread){
	      		while ($result = $product_featheread->fetch_assoc()){
	      			?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId']?>"><img src="admin/uploads/<?php echo $result['image'] ?>" alt="" /></a>
					 <h2><?php echo $result['productName']?></h2>
					 <p><?php echo $fm->textShorten($result['product_desc'],30)?></p>
					 <p><span class="price"><?php echo $fm->format_currency($result['price'])?>VND</span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId']?>&qty=<?php echo $result['productQuantity']?>&sold=<?php echo $result['product_soldout']?>&product_remain=<?php echo $result['product_remain']?>" class="details">Chi tiết</a></span></div>
				</div>
				<?php
			}
		}
				?>
				
			
    		
    	</div>
			
    </div>
    <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>Sản phẩm bán chạy nhất</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
	      <div class="section group">


	      	<?php 
	      	$getproduct_soldout_best= $product->getproduct_soldout_best();
	      	if ($getproduct_soldout_best){
	      		while ($result_sold = $getproduct_soldout_best->fetch_assoc()){
	      			?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result_sold['productId']?>"><img src="admin/uploads/<?php echo $result_sold['image'] ?>" alt="" /></a>
					 <h2><?php echo $result_sold['productName']?></h2>
					 <p><?php echo $fm->textShorten($result_sold['product_desc'],30)?></p>
					 <p><span class="price"><?php echo $fm->format_currency($result_sold['price'])?>VND</span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result_sold['productId']?>&qty=<?php echo $result_sold['productQuantity']?>&sold=<?php echo $result_sold['product_soldout']?>&product_remain=<?php echo $result_sold['product_remain']?>" class="details">Chi tiết</a></span></div>
				</div>
				<?php
			}
		}
				?>
				
			
    		
    	</div>
			
    </div>
 </div>

   
<?php
	include 'inc/footer.php'; 
?>