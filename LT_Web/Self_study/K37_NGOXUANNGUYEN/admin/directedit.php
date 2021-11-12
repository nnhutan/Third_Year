<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php include '../classes/direct.php';  ?>
<?php
    $dir = new direct(); 
    if(!isset($_GET['directid']) || $_GET['directid'] == NULL){
        echo "<script> window.location = 'catlist.php' </script>";
        
    }else {
        $id = $_GET['directid']; // Lấy catid trên host
    }
    // gọi class category
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        // LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
        $directName = $_POST['directName'];
        $linkdirect = $_POST['linkdirect'];
        $direct_desc = $_POST['direct_desc'];
        $updatedirect = $dir -> update_direct($directName,$linkdirect,$direct_desc,$id); // hàm check catName khi submit lên
    }
    
  ?>
        <div class="grid_8">
            <div class="box round first grid">
                <h2>Sửa danh mục</h2>      
               <div class="block"> 
                <?php 
                    if(isset($updatedirect)){
                        echo $updatedirect;
                    }
                 ?>
                 <?php 
                    $get_direct_name = $dir->getdirectbyId($id);
                    if($get_direct_name){
                        while ($result = $get_direct_name->fetch_assoc()) {
                            
                        
                  ?>
                 <form action="" method="post">
                    <table class="form">					
                        <tr>
                             <td>
                        <label>Sửa tên bài</label>
                    </td>
                            <td>
                                <input type="text" value="<?php echo $result['directName']; ?>" name="directName" placeholder="Sửa tên bài hướng dẫn..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                             <td>
                        <label>Sửa đường dẫn</label>
                    </td>
                            <td>
                                <input type="text" value="<?php echo $result['linkdirect']; ?>" name="linkdirect" placeholder="Sửa đường dẫn..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                    <td style="vertical-align: top; padding-top: 9px;">
                        <label>Bài đăng</label>
                    </td>
                    <td>
                        <textarea name="direct_desc" class="tinymce"><?php echo $result['direct_desc'] ?></textarea>
                    </td>
                </tr>
						<tr> 
                            <td>
                                <input type="submit" name="submit" Value="Sửa" />
                            </td>
                        </tr>
                    </table>
                    </form>

                    <?php 
                        }
                    }

                     ?>

                </div>
            </div>
        </div>
        <script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
    });
</script>
<?php include 'inc/footer.php';?>