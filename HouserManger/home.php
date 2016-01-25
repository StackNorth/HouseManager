<?php
class home  {
	private $roomid;//房间的id
	private $address;//地址
	private $area;//房间的面积
	private $type;//房间种类
	private $mode;//房间的状态 出租 未出租 出售 未出售

	/**
	 * @return unknown
	 */
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
	public function getRoomid () { return $this->roomid; }

	/**
	 * @return unknown
	 */
	public function getType () { return $this->type; }

	/**
	 * @param unknown_type $address
	 */
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
	 * @param unknown_type $roomid
	 */
	public function setRoomid ($roomid) { $this->roomid = $roomid; }

	/**
	 * @param unknown_type $type
	 */
	public function setType ($type) { $this->type = $type; }


}


?>