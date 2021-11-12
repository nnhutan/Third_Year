<?php
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/database.php');
	include_once ($filepath.'/../helpers/format.php');
?>


 
<?php 
	/**
	* 
	*/
	class direct
	{
		private $db;
		private $fm;
		public function __construct()
		{
			$this->db = new Database();
			$this->fm = new Format();
		}
		public function insert_direct($directName,$linkdirect,$direct_desc){
			$directName = $this->fm->validation($directName); //gọi ham validation từ file Format để ktra
			$linkdirect = $this->fm->validation($linkdirect); //gọi ham validation từ file Format để ktra
			$directName = mysqli_real_escape_string($this->db->link, $directName);
			$linkdirect = mysqli_real_escape_string($this->db->link, $linkdirect);
			$direct_desc = mysqli_real_escape_string($this->db->link, $direct_desc);
			 //mysqli gọi 2 biến. (catName and link) biến link -> gọi conect db từ file db
			
			if(empty($directName)){
				$alert = "<span class='error'>không được để trống</span>";
				return $alert;
			}else{
				$query = "INSERT INTO tbl_direct(directName,linkdirect,direct_desc) VALUES('$directName','$linkdirect','$direct_desc') ";
				$result = $this->db->insert($query);
				if($result){
					$alert = "<span class='success'>Đã được thêm thành công</span>";
					return $alert;
				}else {
					$alert = "<span class='error'>Thêm không thành công</span>";
					return $alert;
				}
			}
		}
		public function show_direct()
		{
			$query = "SELECT * FROM tbl_direct order by directId desc ";
			$result = $this->db->select($query);
			return $result;
		}
		public function del_direct($id)
		{
			$query = "DELETE FROM tbl_direct where directId = '$id' ";
			$result = $this->db->delete($query);
			if($result){
				$alert = "<span class='success'>đã xóa thành công</span>";
				return $alert;
			}else {
				$alert = "<span class='success'>xóa không thành công</span>";
				return $alert;
			}
		}
		public function getdirectbyId($id)
		{
			$query = "SELECT * FROM tbl_direct where directId = '$id' ";
			$result = $this->db->select($query);
			return $result;
		}
		public function update_direct($directName,$linkdirect,$direct_desc,$id)
		{
			$directName = $this->fm->validation($directName); //gọi ham validation từ file Format để ktra
			$directName = mysqli_real_escape_string($this->db->link, $directName);
			$linkdirect = $this->fm->validation($linkdirect); //gọi ham validation từ file Format để ktra
			$linkdirect = mysqli_real_escape_string($this->db->link, $linkdirect);
			$direct_desc = mysqli_real_escape_string($this->db->link, $direct_desc);
			$id = mysqli_real_escape_string($this->db->link, $id);
			if($directName == "" || $linkdirect=="" || $direct_desc==""){
				$alert = "<span class='error'>không được để trống</span>";
				return $alert;
			}else{
				$query = "UPDATE tbl_direct SET directName= '$directName',linkdirect = '$linkdirect' ,direct_desc='$direct_desc' WHERE directId = '$id' ";
				$result = $this->db->update($query);
				if($result){
					$alert = "<span class='success'>đã cập nhật thành công</span>";
					return $alert;
				}else {
					$alert = "<span class='error'>chưa được cập nhật </span>";
					return $alert;
				}
			}

		}
		public function show_link_direct($id)
		{
			$id = mysqli_real_escape_string($this->db->link, $id);
			$query = "SELECT * FROM tbl_direct where directId = '$id' ";
			$result = $this->db->select($query);
			return $result;
		}
	}
	?>
