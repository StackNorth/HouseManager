<?php
class log  {
	public $user;
	public $page;
	public $content;
	public $time;
	public $browseInfo;
	/**
	 * @return unknown
	 */
	public function getBrowseInfo () { return $this->browseInfo; }

	/**
	 * @return unknown
	 */
	public function getContent () { return $this->content; }

	/**
	 * @return unknown
	 */
	public function getPage () { return $this->page; }

	/**
	 * @return unknown
	 */
	public function getTime () { return $this->time; }

	/**
	 * @return unknown
	 */
	public function getUser () { return $this->user; }

	/**
	 * @param unknown_type $browseInfo
	 */
	public function setBrowseInfo ($browseInfo) { $this->browseInfo = $browseInfo; }

	/**
	 * @param unknown_type $content
	 */
	public function setContent ($content) { $this->content = $content; }

	/**
	 * @param unknown_type $page
	 */
	public function setPage ($page) { $this->page = $page; }

	/**
	 * @param unknown_type $time
	 */
	public function setTime ($time) { $this->time = $time; }

	/**
	 * @param unknown_type $user
	 */
	public function setUser ($user) { $this->user = $user; }
	public function setInfo(){
		$this->setUser($_COOKIE['user']);
		$this->setPage($_SERVER['PHP_SELF']);
		$this->setTime($_COOKIE['lastvisit']);
		$this->setBrowseInfo($_SERVER['HTTP_USER_AGENT']);
	}

}


?>