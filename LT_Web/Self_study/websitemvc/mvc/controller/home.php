<?php 
	
	class home extends controller {

		public function product(){

			$this->loai_san_phammodel = $this->model("loai_san_phammodel");

			$this->view("layout",[

			"type"=>$this->loai_san_phammodel->get(),
			]);
		}

	}

 ?>