<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
 ?>
 <?php 
	  $login_check = Session::get('customer_login');
	  if ($login_check==false) {
	  	header('Location:login.php');
	  }
	   ?>
<?php 
	// if(!isset($_GET['proid']) || $_GET['proid'] == NULL){
 //        echo "<script> window.location = '404.php' </script>";
        
 //    }else {
 //        $id = $_GET['proid']; // Lấy productid trên host
 //    }

 //    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
 //        // LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
 //        $quantity = $_POST['quantity'];
 //        $AddtoCart = $ct -> add_to_cart($id, $quantity); // hàm check catName khi submit lên
 //    } 
 ?>
 <div class="main">
    <div class="content">
    	<div class="section group">
    		<div class="content_top">
    		<div class="heading">
    		<h3>Thông tin khách hàng</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
    	<table class="tblone">
    		<?php 
    		$id = Session::get('customer_id');
    		$get_customers = $cs->show_customers($id);
    		if ($get_customers) {
    			while ($result = $get_customers->fetch_assoc()) {
    			
    		 ?>
    		<tr>
    			<td>Tên</td>
    			<td>:</td>
    			<td><?php echo $result['cusname']; ?></td>
    		</tr>
    		<tr>
    			<td>Thành phố</td>
    			<td>:</td>
    			<td><?php echo $result['cuscity']; ?></td>
    		</tr>
    		<tr>
    			<td>Điện thoại</td>
    			<td>:</td>
    			<td><?php echo $result['phone']; ?></td>
    		</tr>
    		<tr>
    			<td>Quốc gia</td>
    			<td>:</td>
    			<td><?php echo $result['cuscountry']; ?></td>
    		</tr> 
    		<tr>
    			<td>Zipcode</td>
    			<td>:</td>
    			<td><?php echo $result['zipcode']; ?></td>
    		</tr>
    		<tr>
    			<td>Email</td>
    			<td>:</td>
    			<td><?php echo $result['email']; ?></td>
    		</tr>
    		<tr>
    			<td>Địa chỉ</td>
    			<td>:</td>
    			<td><?php echo $result['cusaddress']; ?></td>
    		</tr>
            <tr>
                <td colspan="3"><a href="editprofile.php">Cập nhật</a></td>
               
            </tr>
    		
    		<?php 
    		}
    		}
    		 ?>
    	</table>	
    	</div>	
 	</div>

<?php 
	include 'inc/footer.php';
 ?>