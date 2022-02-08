<?php
	class Customer{
		//ATTRIBUTES
		private $id;
		private $name;
		private $cpf;
		private $address;
		private $phone;
		private $mail;
		private $dob;
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
