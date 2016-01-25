<?php
class user  {
	private $user;
	private $password;
	private $sex;
	private $email;
	private $tel;
	private $add;

	/**
	 * @return unknown
	 */
	public function getAdd () { return $this->add; }

	/**
	 * @return unknown
	 */
	public function getEmail () { return $this->email; }

	/**
	 * @return unknown
	 */
	public function getPassword () { return $this->password; }

	/**
	 * @return unknown
	 */
	public function getSex () { return $this->sex; }

	/**
	 * @return unknown
	 */
	public function getTel () { return $this->tel; }

	/**
	 * @return unknown
	 */
	public function getUser () { return $this->user; }

	/**
	 * @param unknown_type $add
	 */
	public function setAdd ($add) { $this->add = $add; }

	/**
	 * @param unknown_type $email
	 */
	public function setEmail ($email) { $this->email = $email; }

	/**
	 * @param unknown_type $password
	 */
	public function setPassword ($password) { $this->password = $password; }

	/**
	 * @param unknown_type $sex
	 */
	public function setSex ($sex) { $this->sex = $sex; }

	/**
	 * @param unknown_type $tel
	 */
	public function setTel ($tel) { $this->tel = $tel; }

	/**
	 * @param unknown_type $user
	 */
	public function setUser ($user) { $this->user = $user; }

}
?>