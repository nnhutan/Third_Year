﻿<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php include '../classes/category.php';  ?>
<?php
    // gọi class category
    $cat = new category(); 
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        // LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
        $catName = $_POST['catName'];
        $insertCat = $cat -> insert_category($catName); // hàm check catName khi submit lên
    }
  ?>
        <div class="grid_8">
            <div class="box round first grid">
                <h2>Thêm danh mục</h2>      
               <div class="block copyblock"> 
                <?php 
                    if(isset($insertCat)){
                        echo $insertCat;
                    }
                 ?>
                 <form action="catadd.php" method="post">
                    <table class="form">					
                        <tr>
                            <td>
                                <input type="text" name="catName" placeholder="Làm ơn thêm danh mục sản phẩm..." class="medium" />
                            </td>
                        </tr>
						<tr> 
                            <td>
                                <input type="submit" name="submit" Value="Lưu lại" />
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
<?php include 'inc/footer.php';?>