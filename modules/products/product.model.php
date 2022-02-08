<?php
	class Product{
		//ATTRIBUTES
		private $id;
		private $id_status;
		private $product;
		private $amount;
		private $value;
		private $notes;
		private $date_register;
		//GET
		public function __get($attribute){
			return $this->$attribute;
		}
		//SET
		public function __set($attribute, $value){
			$this->$attribute = $value;
			return $this;
		}
	}
?>
