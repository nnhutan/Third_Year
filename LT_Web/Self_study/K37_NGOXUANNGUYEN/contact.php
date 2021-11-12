<?php 
	include 'inc/header.php';

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
    $id = Session::get('customer_id');
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        // LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
        $insert_comment_customer = $cs -> insert_comment_customer($_POST, $id); // hàm check catName khi submit lên
    } 
 ?>
 <div class="main">
    <div class="content">
    	<div class="support">
  			<div class="support_desc">
  				<h3>LIÊN HỆ VỚI CHÚNG TÔI NẾU BẠN GẶP VẤN ĐỀ VỀ KỸ THUẬT </h3>
  				<p>Chúng tôi sẽ phục vụ tân tâm với năng lực về kỹ thuật và sáng tạo,sẽ hỗ trợ hết mình vì khách hàng </p>
  			</div>
  				<img src="web/images/contact.png" alt="" />
  			<div class="clear"></div>
  		</div>
    	<div class="section group">
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h2>Liên hệ với chúng tôi</h2>
				  	<?php
				  	if (isset($insert_comment_customer))
				  	{
				  		echo $insert_comment_customer;
				  	}
				  	?>
					    <form action="" method="POST">
					    	<div>
						    	<span><label>HỌ VÀ TÊN</label></span>
						    	<span><input type="text" name="name"></span>
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    	<span><input type="text" name="email"></span>
						    </div>
						    <div>
						     	<span><label>ĐIỆN THOẠI</label></span>
						    	<span><input type="text" name="phone"></span>
						    </div>
						    <div>
						    	<span><label>MÔ TẢ</label></span>
						    	<span><textarea name="comment"> </textarea></span>
						    </div>
						   <div>
						   		<span><input type="submit" name="submit" value="GỬI"></span>
						  </div>
					    </form>
				  </div>
  				</div>
				
			  </div>    	
    </div>
 </div>

<?php 
	include 'inc/footer.php';
 ?>