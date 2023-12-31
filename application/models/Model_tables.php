<?php

class Model_tables extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	public function getTableData($id = null)
	{
		if ($id) {
			$sql = "SELECT * FROM tables WHERE id = ?";
			$query = $this->db->query($sql, array($id));
			return $query->row_array();
		}

		$user_id = $this->session->userdata('id');
		if ($user_id == 1) {
			$sql = "SELECT * FROM tables ORDER BY id DESC";
			$query = $this->db->query($sql);
			return $query->result_array();
		}
	}

	public function create($data = array())
	{
		if ($data) {
			$create = $this->db->insert('tables', $data);
			return ($create == true) ? true : false;
		}
	}

	public function update($id = null, $data = array())
	{
		$this->db->where('id', $id);
		$update = $this->db->update('tables', $data);

		return ($update == true) ? true : false;
	}

	public function remove($id = null)
	{
		if ($id) {
			$this->db->where('id', $id);
			$delete = $this->db->delete('tables');
			return ($delete == true) ? true : false;
		}
	}

	public function getActiveTable()
	{
		$user_id = $this->session->userdata('id');
		if ($user_id == 1) {
			$sql = "SELECT * FROM tables WHERE available = ? AND active = ?";
			$query = $this->db->query($sql, array(1, 1));
			return $query->result_array();
		}
	}

	public function countTotalTables()
	{
		$sql = "SELECT * FROM tables WHERE available = 1";
		$query = $this->db->query($sql, array(1));
		return $query->num_rows();
	}
}
