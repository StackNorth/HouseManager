<?php
class admin{
	private $name;
	private $password;
	private $level;
	private $loginNum;

	/**
	 * @return unknown
	 */
	public function getLevel () { return $this->level; }

	/**
	 * @return unknown
	 */
	public function getLoginNum () { return $this->loginNum; }

	/**
	 * @return unknown
	 */
	public function getName () { return $this->name; }

	/**
	 * @return unknown
	 */
	public function getPassword () { return $this->password; }

	/**
	 * @param unknown_type $level
	 */
	public function setLevel ($level) { $this->level = $level; }

	/**
	 * @param unknown_type $loginNum
	 */
	public function setLoginNum ($loginNum) { $this->loginNum = $loginNum; }

	/**
	 * @param unknown_type $name
	 */
	public function setName ($name) { $this->name = $name; }

	/**
	 * @param unknown_type $password
	 */
	public function setPassword ($password) { $this->password = $password; }

}


?>