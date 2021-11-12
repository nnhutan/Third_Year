<?php 
	include 'inc/header.php';
?>
<?php
if (isset ($_REQUEST ['search'])) {
        // LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
	$str = addslashes($_GET['fsearch']);
        }
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
	      <div class="section group">
	      	<?php 
	      	if($str=='')
	      	{
	      		echo '<span style="color:red; font-size:18px;">Hãy nhập vào ô tìm kiếm</span>';
	      	}

	       else
	      	$search = $product-> search_product($str);
	      	if ($search){
	      		while ($result = $search->fetch_assoc()) {
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
		else echo '<span style="color:red; font-size:18px;">Không tìm thấy sản phẩm</span>';
				?>

			
    		
    	</div>
			
    </div>
 </div>
<?php
	include 'inc/footer.php'; 
?>