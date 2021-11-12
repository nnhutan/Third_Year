<?php 

	class loai_san_phammodel extends DB {

		public function get(){

			$sql ="SELECT *FROM loai_hang_hoas";
			return mysqli_query($this->con,$sql);
		}
	}

 ?>