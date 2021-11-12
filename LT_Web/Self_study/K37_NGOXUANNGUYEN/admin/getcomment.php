<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/customer.php';  ?>


<?php require_once '../helpers/format.php'; ?>
<?php 
	$cs = new customer();
	$fm = new Format();
	if(!isset($_GET['cusid']) || $_GET['cusid'] == NULL){
        // echo "<script> window.location = 'catlist.php' </script>";
        
    }else {
        $id = $_GET['cusid']; // Lấy catid trên host
      // hàm check delete Name khi submit lên
        $del_comment = $cs -> del_comment($id);
    }
 ?>
<div class="grid_8">
	<div class="box round first grid">
		<h2>Bình luận</h2>      
		<div class="block"> 
			<form action="getcomment.php" method="post">
				<table class="form">					
					<thead>
						<tr>
							<th>No.</th>
							<th>Tên khách hàng</th>
							<th>Email</th>
							<th>Điện thoại</th>
							<th>Bình luận</th>
							<th>Xử lý</th>
						</tr>
					</thead>

					<tbody>
						<?php 
				
				$get_comment = $cs->get_comment();
				$i = 0;
				
				
					if($get_comment){
					
							while ($result = $get_comment->fetch_assoc()){
								$i++;
				 ?>
				 <tr class="odd gradeX">
					<td><?php echo $i ?></td>
					<td><?php echo $result['name'] ?></td>
					<td><?php echo $result['email'] ?></td>
					<td><?php echo $result['phone'] ?></td>
					<td><?php echo $result['comment'] ?></td>
					<td><a href="?cusid=<?php echo $result['cusId']?>">Xóa</a></td>
				</tr>
				 <?php
				}
			}?>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</div>
<?php include 'inc/footer.php';?>