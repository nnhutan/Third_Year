<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php 
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../classes/cart.php');
	include_once ($filepath.'/../helpers/format.php');
	include_once ($filepath.'/../classes/product.php');
	require '../PHPMailer-5.2-stable/PHPMailerAutoload.php';
 ?>
 <?php
 	$pd = new product();
    $ct = new cart();
    if(isset($_GET['shiftid'])){
    	$id = $_GET['shiftid'];
    	$proid = $_GET['proid'];
    	$qty = $_GET['qty'];
    	$time = $_GET['time'];
    	$price = $_GET['price'];
    	$cusid = $_GET['cusid'];
    	$shifted = $ct->shifted($id,$proid,$qty,$time,$price);
    	$update_product_soldout = $ct->update_product_soldout($proid,$qty);
    	$get_email = $ct->get_email_customer($cusid);
    	if($get_email){
    		$result_customer = $get_email->fetch_assoc();
    	}
    	$email = $result_customer['email'];

    	$mail = new PHPMailer;

					//$mail->SMTPDebug = 3;                               // Enable verbose debug output

					$mail->isSMTP();                                      // Set mailer to use SMTP
					$mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
					$mail->SMTPAuth = true;                               // Enable SMTP authentication
					$mail->Username = 'xuannguyenngo@gmail.com';                 // SMTP username
					$mail->Password = 'ngoxop2019';                           // SMTP password
					//$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
					$mail->Port = 25;                                    // TCP port to connect to

					$mail->setFrom('xuannguyenngo@gmail.com', 'Mailer');
					$mail->addAddress($email, 'Joe User');     // Add a recipient
					//$mail->addAddress('ellen@example.com');               // Name is optional
					//$mail->addReplyTo('info@example.com', 'Information');
					//$mail->addCC('cc@example.com');
					//$mail->addBCC('bcc@example.com');

					//$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
					//$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
					$mail->isHTML(true);                                  // Set email format to HTML

					$mail->Subject = 'DIYHUE';
					$mail->Body    = 'Đơn hàng của quý khách đã được xác nhận.Cảm ơn quý khách đã tin tưởng shop và đặt hàng sản phẩm,quý khách hãy theo dõi đơn hàng và xác nhận cho chúng tôi nếu quý khách đã nhận hàng,xin cám ơn quý khách';
					$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
										if(!$mail->send()) {
					    echo 'email chưa được gửi đến khách hàng';
					    echo 'Mailer Error: ' . $mail->ErrorInfo;
					} else {
					    echo 'đã gửi đến email khách hàng';
					}
    }

    if(isset($_GET['delid'])){
    	$id = $_GET['delid'];
    	$time = $_GET['time'];
    	$price = $_GET['price'];
    	$del_shifted = $ct->del_shifted($id,$time,$price);
    }
 
  ?>
        <div class="grid_8">
            <div class="box round first grid">
                <h2>Đơn hàng</h2>
                <div class="block">
                
                <?php 
                if (isset($shifted)) {
                	echo $shifted;
                }
                 ?> 
                      
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>No.</th>
							<th>Ngày đặt</th>
							<th>Sản phẩm</th>
							<th>Số lượng</th>
							<th>Giá</th>
							<th>Khách hàng</th>
							<th>Địa chỉ</th>
							<th>Xử lý</th>
						</tr>
					</thead>
					<tbody>
						<?php 
						$ct = new cart();
						$fm = new Format();
						$get_inbox_cart = $ct -> get_inbox_cart();
						if ($get_inbox_cart) {
							$i=0;
							while ($result = $get_inbox_cart->fetch_assoc() ) {
								$i++;
						 ?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $fm->FormatDate($result['date_order']); ?></td>
							<td><?php echo $result['productName'] ?> </td>
							<td><?php echo $result['quantity'] ?></td>
							<td><?php echo $fm->format_currency($result['price']).' VNĐ' ?></td>
							<td><?php echo $result['cusId'] ?></td>
							<td><a href="customer.php?id=<?php echo $result['cusId'] ?>">Xem khách hàng</a></td>

							<td>
								<?php 
								if($result['status']==0){
								 ?>
								<a href="?shiftid=<?php echo $result['orderid']; ?>&qty=<?php echo $result['quantity']; ?>&proid=<?php echo $result['productId']; ?>&price=<?php echo $result['price']; ?>&time=<?php echo $result['date_order']; ?>&cusid=<?php echo $result['cusId']; ?>">Đang chờ xử lý</a>
									
								 
								<?php 
								}elseif($result['status']==1) {

								 ?>
								<a href="?confirmid=<?php echo $result['orderid'] ?>&price=<?php echo $result['price']; ?>&time=<?php echo $result['date_order'] ?>">Gửi hàng</a>
								 <?php 
								}elseif ($result['status']==2) {
									?>
									<a href="?delid=<?php echo $result['orderid'];?>&price=<?php echo $result['price'];?>&time=<?php echo $result['date_order'];?>">Xóa đơn</a>
								

							</td>
						</tr>
						<?php 
						}
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
