<?php


class page  {
		public $res_array;
		public $pageNow=1;
		public $pageCount;
		public $rowCount;
		public $pageSize=10; 
		public $navigate;
		public $gotoUr;
		public $pageWhole=3;
	/**
	 * @return unknown
	 */
	public function getRes_array () { return $this->res_array; }
	/**
	 * @param unknown_type $res_array
	 */
	public function setRes_array ($res_array) { $this->res_array = $res_array; }
	/**
	 * @return unknown
	 */
	public function getPageCount () { return $this->pageCount; }

	/**
	 * @return unknown
	 */
	public function getPageNow () { return $this->pageNow; }

	/**
	 * @return unknown
	 */
	public function getPageSize () { return $this->pageSize; }

	/**
	 * @return unknown
	 */
	public function getRowCount () { return $this->rowCount; }

	/**
	 * @param unknown_type $pageCount
	 */
	public function setPageCount ($pageCount) { $this->pageCount = $pageCount; }

	/**
	 * @param unknown_type $pageNow
	 */
	public function setPageNow ($pageNow) { $this->pageNow = $pageNow; }

	/**
	 * @param unknown_type $pageSize
	 */
	public function setPageSize ($pageSize) { $this->pageSize = $pageSize; }

	/**
	 * @param unknown_type $rowCount
	 */
	public function setRowCount ($rowCount) { $this->rowCount = $rowCount; }


	/**
	 * 上一页
	 */
	public function  upPage(){
		$pageUp=1;
		if($this->pageNow>1 )
			$pageUp =$this->pageNow-1;
		
		return $pageUp;
	}
	/**
	 * 下一页
	 */
	public function downPage(){
		$pageDown=$this->pageNow;
		if($this->pageNow<$this->pageCount){
			$pageDown=$this->pageNow+1;
		}
		return $pageDown;
			
	}
}
?>