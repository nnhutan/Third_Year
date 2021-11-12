<?php 
	include 'inc/header.php';
	?>
	<?php
	if(isset($_GET['directid']))  {
        $id = $_GET['directid']; // Lấy catid trên host
        $show_link_direct = $dir->show_link_direct($id); // hàm check delete Name khi submit lên
    }
	?>
	<div class="content">
    	<div class="content_top">
    		<p>Bạn có thể xem video trên youtube để được chi tiết hơn ở link phía dưới :</p>
	<?php 
	      	if ($show_link_direct){
	      		while ($result = $show_link_direct->fetch_assoc()){
	      			?>
	      			
					 <a href="<?php echo $result['linkdirect']?>"><h3><?php echo $result['linkdirect']?></h3></a>
				<?php
			}
		}
				?>
			</div>
		</div>
<?php
	include 'inc/footer.php'; 
?>