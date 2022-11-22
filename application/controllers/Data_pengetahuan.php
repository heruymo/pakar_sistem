<?php

class Data_pengetahuan extends CI_Controller
{
	private $model = NULL;
	public $rows;

	public function __construct()
	{
		parent::__construct();

		$this->load->library('pagination');
		$this->load->model('Pengetahuan_model');
		$this->model = $this->Pengetahuan_model;
	}

	public function index()
	{
		if (isset($_GET['tambah'])) {
			$rows1 = $this->model->select1();
			$rows2 = $this->model->select2();
			$this->load->view('module/module_sp/view_tambah_pengetahuan', [
				'rows1' => $rows1,
				'rows2' => $rows2
			]);
		} else if (isset($_GET['ubah'])) {
			$rows2 = $this->model->select2();
			$this->load->view('module/module_sp/view_ubah_pengetahuan', [
				'rows2' => $rows2, 'model' => $this->model
			]);
		} else {
			$this->select();
		}
	}


	public function create()
	{
		if (isset($_POST['btnSubmit'])) {
			$this->model->id_penyakit = $_POST['id_penyakit'];
			$this->model->id_gejala = $_POST['id_gejala'];
			$this->model->insert();
			$this->session->set_flashdata(
				'tambah',
				'<div class="alert alert-warning alert-dismissible fade show" role="alert">
                      <strong>Data Pengetahuan Berhasil Ditambahkan !</strong></br>Berikut Semua Daftar Data Pengetahuan yang Tersimpan
                      <button class="close" type="button" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                      </button>
                    </div>'
			);
			redirect('data_pengetahuan/index');
		} else {
			$rows1 = $this->model->select1();
			$rows2 = $this->model->select2();
			$this->load->view('module/module_sp/view_tambah_pengetahuan', [
				'rows1' => $rows1,
				'rows2' => $rows2
			]);
		}
	}

	public function select()
	{
		if (isset($_POST['kunci'])) {
			$kunci = $_POST['kunci'];
			$data['data'] = $this->model->searching($kunci);
			$this->load->view('module/module_sp/view_data_pengetahuan', ['data' => $data]);
		} else {
			$config['base_url'] = site_url('data_pengetahuan/index'); //site url
			$config['total_rows'] = $this->model->select_count(); //total row
			$config['per_page'] = 10;  //show record per halaman
			$config["uri_segment"] = 3;  // uri parameter
			$choice = $config["total_rows"] / $config["per_page"];
			$config["num_links"] = floor($choice);

			// Membuat Style pagination untuk BootStrap v4
			$config['first_link']       = 'First';
			$config['last_link']        = 'Last';
			$config['next_link']        = 'Next';
			$config['prev_link']        = 'Prev';
			$config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
			$config['full_tag_close']   = '</ul></nav></div>';
			$config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
			$config['num_tag_close']    = '</span></li>';
			$config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
			$config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
			$config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
			$config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
			$config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
			$config['prev_tagl_close']  = '</span>Next</li>';
			$config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
			$config['first_tagl_close'] = '</span></li>';
			$config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
			$config['last_tagl_close']  = '</span></li>';

			$this->pagination->initialize($config);
			$data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

			//panggil function get_mahasiswa_list yang ada pada mmodel mahasiswa_model. 
			$data['data'] = $this->model->select($config["per_page"], $data['page']);

			$data['pagination'] = $this->pagination->create_links();
			$this->load->view('module/module_sp/view_data_pengetahuan', ['data' => $data]);
		}
	}

	public function detail()
	{
		$this->model->id = $_GET['id_penyakit'];
		$this->model->detail();
		$this->rows = $this->model->detail();
		$this->load->view('module/module_sp/view_detail_pengetahuan', ['rows' => $this->rows]);
	}

	public function update()
	{
		if (isset($_POST['btnSubmit'])) {
			$this->model->id = $_POST['id'];
			$this->model->id_penyakit = $_POST['id_penyakit'];
			$this->model->id_gejala = $_POST['id_gejala'];
			$this->model->update();
			$this->session->set_flashdata(
				'ubah',
				'<div class="alert alert-warning alert-dismissible fade show" role="alert">
                      <strong>Data Pengetahuan Berhasil Ditambahkan !</strong></br>Berikut Semua Daftar Data Pengetahuan yang Tersimpan
                      <button class="close" type="button" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                      </button>
                    </div>'
			);
			redirect('data_pengetahuan/index');
		} else {
			$id = $_GET['id'];
			$query = $this->db->query("select * from pengetahuan where id='$id'");
			$row = $query->row();
			$this->model->id = $row->id;
			$this->model->id_penyakit = $row->id_penyakit;
			$rows2 = $this->model->select2();
			$this->load->view('module/module_sp/view_ubah_pengetahuan', [
				'rows2' => $rows2, 'model' => $this->model
			]);
		}
	}

	public function delete()
	{
		$this->model->id = $_GET['id_penyakit'];
		$this->model->delete();
		$this->session->set_flashdata(
			'hapus',
			'<div class="alert alert-warning alert-dismissible fade show" role="alert">
     <strong>Data Gejala Berhasil Dhapus !</strong>
     <button class="close" type="button" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">×</span>
    </button></div>'
		);
		redirect('data_pengetahuan/index');
	}
	public function delete1()
	{
		$this->model->id = $_GET['id'];
		$this->model->delete1();
		$this->session->set_flashdata(
			'hapus',
			'<div class="alert alert-warning alert-dismissible fade show" role="alert">
     <strong>Data Gejala Berhasil Dhapus !</strong>
     <button class="close" type="button" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">×</span>
    </button></div>'
		);
		redirect('data_pengetahuan/index');
	}
}
