<?php

class Pengetahuan_model extends CI_Model
{
	public $id;
	public $id_penyakit;
	public $id_gejala;
	public $validasi;


	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}


	public function insert()
	{
		$data = [
			'id_penyakit' => $this->id_penyakit,
			'id_gejala' => $this->id_gejala
		];
		$this->db->insert('pengetahuan', $data);
	}

	public function detail()
	{
		$this->db->select('*')
			->from('pengetahuan a')
			->join('penyakit b', 'a.id_penyakit=b.id_penyakit')
			->join('gejala c', 'c.id_gejala=a.id_gejala')
			->where('a.id_penyakit=', $this->id);
		$query = $this->db->get();
		return $query->result();
	}

	public function select_count()
	{
		$this->db->select('*')
			->from('pengetahuan a')
			->join('penyakit b', 'a.id_penyakit=b.id_penyakit')
			->join('gejala c', 'c.id_gejala=a.id_gejala')
			->group_by('a.id_penyakit');
		$query = $this->db->get();
		return $query->num_rows();
	}
	public function update()
	{
		$data = [
			'id_penyakit' =>	$this->id_penyakit,
			'id_gejala' =>	$this->id_gejala
		];
		$this->db->where('id', $this->id);
		$this->db->update('pengetahuan', $data);
	}


	public function delete()
	{
		$array = array('pengetahuan', 'penyakit');
		$this->db->where('id_penyakit', $this->id);
		$this->db->delete($array);
	}
	public function delete1()
	{
		$array = array('pengetahuan');
		$this->db->where('id', $this->id);
		$this->db->delete($array);
	}

	public function select($limit, $start)
	{
		$this->db->select('*')
			->from('pengetahuan a')
			->join('penyakit b', 'a.id_penyakit=b.id_penyakit')
			->group_by('a.id_penyakit')
			->limit($limit, $start);
		$query = $this->db->get();
		return $query;
	}


	public function select1()
	{
		$query = $this->db->get('penyakit');
		return $query->result();
	}

	public function select2()
	{
		$query = $this->db->get('gejala');
		return $query->result();
	}
}
