<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/product.php';  ?>
<?php
    // gọi class category
    $product = new product(); 
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        // LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
        
        $insertSlider = $product -> insert_slider($_POST, $_FILES); // hàm check catName khi submit lên
    }
  ?>
<div class="grid_8">
    <div class="box round first grid">
        <h2>Thêm slider</h2>
    <div class="block">
    <?php 
    if(isset($insertSlider)){
        echo $insertSlider;
    }
     ?>               
         <form action="slideradd.php" method="post" enctype="multipart/form-data">
            <table class="form">     
                <tr>
                    <td>
                        <label>Tiêu đề</label>
                    </td>
                    <td>
                        <input type="text" name="sliderName" placeholder="Enter Slider Title..." class="medium" />
                    </td>
                </tr>           
    
                <tr>
                    <td>
                        <label>Tải ảnh lên</label>
                    </td>
                    <td>
                        <input type="file" name="image"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>Hiển thị</label>
                    </td>
                    <td>
                        <select name="type">
                            <option value="1">On</option>    
                            <option value="0">Off</option> 
                        </select>
                    </td>
                </tr>
               
				<tr>
                    <td></td>
                    <td>
                        <input type="submit" name="submit" value="Save" />
                    </td>
                </tr>
            </table>
            </form>
        </div>
    </div>
</div>
<!-- Load TinyMCE -->
<script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
    });
</script>
<!-- Load TinyMCE -->
<?php include 'inc/footer.php';?>