<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/category.php';  ?>
<?php include '../classes/cart.php';  ?>
<?php include '../classes/product.php';  ?>
<?php require_once '../helpers/format.php'; ?>
<?php 
	$pd = new product();
	$fm = new Format();
	if(!isset($_GET['productid']) || $_GET['productid'] == NULL){
        // echo "<script> window.location = 'catlist.php' </script>";
        
    }else {
        $id = $_GET['productid']; // Lấy catid trên host
        $delProduct = $pd -> del_product($id); // hàm check delete Name khi submit lên
    }
 ?>
<div class="grid_8">
    <div class="box round first grid">
        <h2>Tất cả sản phẩm</h2>
        <div class="block">  
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th>ID</th>
					<th>Code</th>
					<th>Tên sản phẩm</th>
					<th>Nhập hàng</th>
					<th>Số lượng nhập</th>
					<th>Đã bán</th>
					<th>Tồn</th>
					<th>Giá</th>
					<th>Ảnh</th>
					<th>Danh mục</th>
					<th>Xử lý</th>
				</tr>
			</thead>
			<tbody>
				<?php 
				
				$pdlist = $pd->show_product();
				$i = 0;
				
				
					if($pdlist){
					
							while ($result = $pdlist->fetch_assoc()){
								$i++;
									
									
				 ?>
				<tr class="odd gradeX">
					<td><?php echo $i ?></td>
					<td><?php echo $result['product_code'] ?></td>
					<td><?php echo $result['productName'] ?></td>
					<td><a href="productmorequantity.php?productid=<?php echo $result['productId'] ?>">Nhập hàng</a></td>
					<td>
						<?php echo $result['productQuantity'] ?>

					</td>
					<td>
						<?php echo $result['product_soldout'] ?>

					</td>
					<td>
						<?php
						$product_remain = $result['productQuantity']-$result['product_soldout'];
						if($product_remain==0){
							echo "Hết hàng";
						 } 
						 else
						  echo $product_remain; ?>

					</td>
					<td><?php echo $fm->format_currency($result['price']) ?></td>
					<td><img src="uploads/<?php echo $result['image'] ?>" width="150"></td>
					<td><?php echo $result['catName'] ?></td>
					
	
					
					<td><a href="productedit.php?productid=<?php echo $result['productId'] ?>">Sửa</a> || <a href="?productid=<?php echo $result['productId'] ?>">Xóa</a></td>
				</tr>
				<?php
							
						
					}
				}
				?>
			</tbody>
		</table>

       </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        setupLeftMenu();
        $('.datatable').dataTable();
		setSidebarHeight();
    });
</script>
<?php include 'inc/footer.php';?>
