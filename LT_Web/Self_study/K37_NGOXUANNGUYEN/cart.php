<?php 
include 'inc/header.php';

?>
<?php

if(isset($_GET['cartid']))  {
        $cartid = $_GET['cartid']; // Lấy catid trên host
        $delcart = $ct->del_product_cart($cartid); // hàm check delete Name khi submit lên
    }
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'] )){
        // LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
    	$cartId = $_POST['cartId'];
    	$id = $_POST['productId'];
    	$quantity =  $_POST['quantity'];
    	$show_product_remain = $product ->show_product_remain($id)->fetch_assoc();		
    	$product_remain = $show_product_remain['product_remain'];
    	if ($quantity <= $product_remain)
    	{
			$update_quantity_cart = $ct->update_quantity_Cart($cartId, $quantity); // hàm check catName khi submit lên
		}				
		else echo $mgs = "không đủ hàng";

	} 
	?>
	<style>
		.shopleft a {
			padding: 10px;

			background: #602D8D;
			color: #fff;
		}
		.shopright a
		{
			padding: 10px;

			background: #602D8D;
			color: #fff;
		}
	</style>
	<div class="main">
		<div class="content">
			<div class="cartoption">		
				<div class="cartpage">
					<h2>Giỏ hàng của bạn</h2>

					<?php
					if (isset($update_quantity_cart))
					{
						echo $update_quantity_cart;
					} 
					?>
					<?php
					if (isset($delcart))
					{
						echo $delcart;
					} 
					?>
					<table class="tblone">
						<tr>
							<th width="20%">Tên sản phẩm</th>
							<th width="10%">Hình ảnh</th>
							<th width="15%">Số lượng</th>
							<th width="25%">Giá sản phẩm</th>
							<th width="20%">Tổng giá</th>
							<th width="10%">Hoạt động</th>
						</tr>

						<?php
						$i =0;
						$qty = 0 ;
						$get_info_cart = $ct->get_product_cart();
						if ($get_info_cart){
							while ($result = $get_info_cart->fetch_assoc()) {
								$i=$i+$result['price']*$result['quantity'];
								$qty =  $qty + $result['quantity'];
								?>
								<tr>
									<td><?php echo $result['productName']?></td>
									<td><img src="admin/uploads/<?php echo $result['image'] ?>" alt="" /></td>
									<td>
										<form action="" method="post">
											<input type="hidden" name="cartId" value="<?php echo $result['cartId']?>"/>
											<input type="hidden" name="productId" value="<?php echo $result['productId']?>"/>
											<input type="number" name="quantity" value="<?php echo $result['quantity']?>" min ="1"/>

											<input type="submit" class="buysubmit" name="submit" value="Cập nhật"/>
											<?php
											if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'] )){
        // LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
												$cartId = $_POST['cartId'];
												$id = $_POST['productId'];
												$quantity =  $_POST['quantity'];
												$show_product_remain = $product ->show_product_remain($id)->fetch_assoc();		
												$product_remain = $show_product_remain['product_remain'];
												if ($quantity <= $product_remain)
												{
			$update_quantity_cart = $ct->update_quantity_Cart($cartId, $quantity); // hàm check catName khi submit lên
		}				
		else echo '<span style="color:red; font-size:18px;">Không đủ hàng,hãy cập nhật lại số lượng</span>';

	} 
	?>


</form>
</td>
<td><?php echo $fm->format_currency($result['price'])?>VND</td>
<td><?php echo $fm->format_currency($result['price']*$result['quantity'])?>VND</td>
<td><a href="?cartid=<?php echo $result['cartId']?>">Xóa</a></td>
</tr>

<?php
}
} 
?>
<?php
if ($qty!=0)
{
	?>
</table>
<table style="float:right;text-align:left;" width="40%">
	<tr>
		<th>Tổng tiền  : </th>
		<td><?php echo $fm->format_currency($i);
		session::set('qty',$qty);

		?>VND</td>
	</tr>
	<tr>
		<th>VAT : </th>
		<td><?php echo $fm->format_currency($i*3/100); ?>VND</td>
	</tr>
	<tr>
		<th>Tổng tiền thanh toán :</th>
		<td><?php echo $fm->format_currency($i*3/100+$i); ?>VND </td>
	</tr>
</table>
<?php
}
else echo 'Giỏ hàng đang trống,bạn hãy tiếp tục mua sắm' 
	?>
</div>
<div class="shopping">
	<div class="shopleft">
		<a style="background:#602D8D" href="index.php">TIẾP TỤC MUA SẮM</a>
	</div>
	<div class="shopright">
		<?php
		$check_cart = $ct->check_cart();
		if($check_cart == false)
		{
			echo '';
		}
		else echo '<a style="background:#602D8D" href="payment.php">THANH TOÁN</a></div>';
		?>
	</div>
</div>  	
<div class="clear"></div>
</div>
</div>
<?php
include 'inc/footer.php'; 
?>