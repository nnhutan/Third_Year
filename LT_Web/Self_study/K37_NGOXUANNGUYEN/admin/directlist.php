<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/direct.php';  ?>
<?php
    // gọi class category
    $dir = new direct();     
    if(!isset($_GET['delid']) || $_GET['delid'] == NULL){
        // echo "<script> window.location = 'catlist.php' </script>";
        
    }else {
        $id = $_GET['delid']; // Lấy catid trên host
        $deldirect = $dir -> del_direct($id); // hàm check delete Name khi submit lên
    }
 ?>

        <div class="grid_8">
            <div class="box round first grid">
                <h2>Danh mục sản phẩm</h2>
                <div class="block">  
                <?php 
                    if(isset($deldirect)){
                        echo $deldirect;
                    }
                 ?>      
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>No.</th>
							<th>Bài hướng dẫn</th>
							<th>Xử lý</th>
						</tr>
					</thead>
					<tbody>
						<?php 
							$show_direct = $dir -> show_direct();
							if($show_direct){
								$i = 0;
								while($result = $show_direct -> fetch_assoc()){
									$i++;
								
						?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $result['directName']; ?></td>
							<td><a href="directedit.php?directid=<?php echo $result['directId']; ?>">Sửa</a> || <a onclick = "return confirm('bạn có chắc chắn muốn xóa không???')" href="?delid=<?php echo $result['directId'] ?>">Xóa</a></td>
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

