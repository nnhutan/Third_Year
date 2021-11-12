<?php
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/database.php');
	include_once ($filepath.'/../helpers/format.php');
?>


 
<?php 
	/**
	* 
	*/
	class customer
	{
		private $db;
		private $fm;
		public function __construct()
		{
			$this->db = new Database();
			$this->fm = new Format();
		}
		public function insert_customer($date)
		{
			$name = mysqli_real_escape_string($this->db->link, $date['name']);
			$city = mysqli_real_escape_string($this->db->link, $date['city']);
			$zipcode = mysqli_real_escape_string($this->db->link, $date['zipcode']);
			$email = mysqli_real_escape_string($this->db->link, $date['email']);
			$address = mysqli_real_escape_string($this->db->link, $date['address']);
			$country = mysqli_real_escape_string($this->db->link, $date['country']);
			$phone = mysqli_real_escape_string($this->db->link, $date['phone']);
			$password = mysqli_real_escape_string($this->db->link, md5($date['password']));

			if($name == "" || $city == "" || $zipcode == "" || $email == "" || $address == "" || $country == "" || $phone == "" || $password == ""){
				$alert = "<span class='error'>không được để trống</span>";
				return $alert;
			}else{
				$check_email = "SELECT * FROM customer WHERE email='$email' LIMIT 1";
				$result_check = $this->db->select($check_email);
				if ($result_check) {
					$alert = "<span class='error'>email đã tồn tại </span>";
					return $alert;
				}else {
					$query = "INSERT INTO customer(cusname,cuscity,zipcode,email,cusaddress,cuscountry,phone,password) VALUES ('$name','$city','$zipcode','$email','$address','$country','$phone','$password') ";
					$result = $this->db->insert($query);
					if($result){
						$alert = "<span class='success'>Tạo tài khoản thành công</span>";
						return $alert;
					}else {
						$alert = "<span class='error'>Tạo chưa thành công</span>";
						return $alert;
					}
				}
			}
		}
		public function login_customer($date)
		{
			$email = mysqli_real_escape_string($this->db->link, $date['email']);
			$password = mysqli_real_escape_string($this->db->link, md5($date['password']));
			if($email == '' || $password == ''){
				$alert = "<span class='error'>không được để trống</span>";
				return $alert;
			}else{
				$check_login = "SELECT * FROM customer WHERE email='$email' AND password='$password' ";
				$result_check = $this->db->select($check_login);
				if ($result_check != false) {
					$value = $result_check->fetch_assoc();
					Session::set('customer_login', true);
					Session::set('customer_id', $value['cusId']);
					Session::set('customer_name', $value['cusname']);
					header('Location:order.php');
				}else {
					$alert = "<span class='error'>Tài khoản hoặc mật khẩu không đúng</span>";
					return $alert;
				}
			}
		}
		public function show_customers($id)
		{
			$query = "SELECT * FROM customer WHERE cusid='$id' ";
			$result = $this->db->select($query);
			return $result;
		}
		public function update_customers($data, $id)
		{
			$name = mysqli_real_escape_string($this->db->link, $data['name']);
			$zipcode = mysqli_real_escape_string($this->db->link, $data['zipcode']);
			$email = mysqli_real_escape_string($this->db->link, $data['email']);
			$address = mysqli_real_escape_string($this->db->link, $data['address']);
			$phone = mysqli_real_escape_string($this->db->link, $data['phone']);
			$city = mysqli_real_escape_string($this->db->link, $data['city']);
			
			if($name=="" || $zipcode=="" || $email=="" || $address=="" || $phone ==""||$city ==""){
				$alert = "<span class='error'>Không được để trống</span>";
				return $alert;
			}else{
				$query = "UPDATE customer SET cusname='$name',zipcode='$zipcode',email='$email',cusaddress='$address',phone='$phone',cuscity='$city' WHERE cusid ='$id'";
				$result = $this->db->insert($query);
				if($result){
						$alert = "<span class='success'>Đã cập nhật thành công</span>";
						return $alert;
				}else{
						$alert = "<span class='error'>Cập nhật không thành công</span>";
						return $alert;
				}
				
			}
		}
		public function insert_comment_customer ($date,$id){
			$id = mysqli_real_escape_string($this->db->link, $id);
			$name = mysqli_real_escape_string($this->db->link, $date['name']);
			$email = mysqli_real_escape_string($this->db->link, $date['email']);
			$phone = mysqli_real_escape_string($this->db->link, $date['phone']);
			$comment = mysqli_real_escape_string($this->db->link, $date['comment']);
			if($name == "" || $email == "" || $phone == "" || $comment == ""){
				$alert = "<span class='error'>không được để trống</span>";
				return $alert;
			}
			else
			{ 
				$query = "INSERT INTO tbl_comment(cusid,name,email,phone,comment) VALUES ('$id','$name','$email','$phone','$comment') ";
					$result = $this->db->insert($query);
					if($result){
						$alert = "<span class='success'>Đã gửi bình luận của bạn đến admin</span>";
						return $alert;
					}else {
						$alert = "<span class='error'>chưa gửi thành công</span>";
						return $alert;
					}
		}
	}
		public function get_comment()
		{
			$query = "SELECT * FROM tbl_comment ";
			$result = $this->db->select($query);
			return $result;

		}
		public function del_comment($id)
		{
			$query = "DELETE FROM tbl_comment where cusId = '$id' ";
			$result = $this->db->delete($query);
			if($result){
				$alert = "<span class='success'>Đã xóa</span>";
				return $alert;
			}else {
				$alert = "<span class='success'>xóa không thành công</span>";
				return $alert;
			}
		}

	}
 ?>