<?php 
	include 'inc/header.php';
	?>
	<div class="content">
    	<div class="content_top">
	<?php 
	      	$show_direct = $dir->show_direct();
	      	if ($show_direct){
	      		while ($result = $show_direct->fetch_assoc()){
	      			?>
	      			
					 <a href="showdirect.php?directid=<?php echo $result['directId']?>"><h2><?php echo $result['directName']?></h2></a>
				<?php
			}
		}
				?>
			</div>
		</div>
<?php
	include 'inc/footer.php'; 
?>