<?php



class pubInfo  {
	private $name;//房间的拥有者的姓名
	private $user;//发布用户名
	private $roomid;//房间的id
	private $mode;//房间的状态 出租 未出租 出售 未出售
	private $price;//价格
	private $address;//地址
	private $area;//房间的面积
	private $type;//房间种类
	private $tel;//联系电话

	/**
	 * @return unknown
	 */
	public function getUser(){ return $this->user;}
	public function getAddress () { return $this->address; }

	/**
	 * @return unknown
	 */
	public function getArea () { return $this->area; }

	/**
	 * @return unknown
	 */
	public function getMode () { return $this->mode; }

	/**
	 * @return unknown
	 */
	public function getName () { return $this->name; }

	/**
	 * @return unknown
	 */
	public function getPrice () { return $this->price; }

	/**
	 * @return unknown
	 */
	public function getRoomid () { return $this->roomid; }

	/**
	 * @return unknown
	 */
	public function getTel () { return $this->tel; }

	/**
	 * @return unknown
	 */
	public function getType () { return $this->type; }

	/**
	 * @param unknown_type $address
	 */
	public function setUser($user){ $this->user = $user;}
	public function setAddress ($address) { $this->address = $address; }

	/**
	 * @param unknown_type $area
	 */
	public function setArea ($area) { $this->area = $area; }

	/**
	 * @param unknown_type $mode
	 */
	public function setMode ($mode) { $this->mode = $mode; }

	/**
	 * @param unknown_type $name
	 */
	public function setName ($name) { $this->name = $name; }

	/**
	 * @param unknown_type $price
	 */
	public function setPrice ($price) { $this->price = $price; }

	/**
	 * @param unknown_type $roomid
	 */
	public function setRoomid ($roomid) { $this->roomid = $roomid; }

	/**
	 * @param unknown_type $tel
	 */
	public function setTel ($tel) { $this->tel = $tel; }

	/**
	 * @param unknown_type $type
	 */
	public function setType ($type) { $this->type = $type; }
}
?>