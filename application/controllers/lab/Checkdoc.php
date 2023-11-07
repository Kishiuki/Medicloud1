<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Checkdoc extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->lang->load(conf('path_module_lab') . 'dokter', $this->session->userdata('site_lang'));
		$this->load->model(conf('path_module_lab') . "Check_model", "check");
		$this->load->model("/admin/Other_setting_model", "other_set");
	}
	public function index()
	{
		$this->data["web_title"] = "Cek Dokumen - " . conf('lab_nama_klinik_id');
		$this->data["page_title"] = "Cek Dokumen - " . conf('lab_nama_klinik_id');
		//$this->data["page_title_small"]="";
		$this->data['js_control'] = conf('path_module_lab') . "checkdoc.js";
		$gets = $this->input->get();
		$this->data['no_menu'] = true;
		$no_doc = (isset($gets['no'])) ? $gets['no'] : "";
		$this->data['no_doc'] = $no_doc;
		$extract = extractUniqCode($no_doc);
		$clinic_id = $extract["periksa.clinic_id"];
		// update 2021-08-20
		$doc_setting = $this->other_set->get_setting_doc_requirements(array("clinic_id" => $clinic_id));
		$this->data['doc_setting'] = array_group_by("code", $doc_setting, true);
		$this->data['header_img'] = base_url($this->data['doc_setting']->img_doc_header->path);

		$dt_profile =  $this->other_set->get_com_profile(array("clinic_id" => $clinic_id));
		$data_profile = $dt_profile[0];
		$this->data['doc_setting_profile'] = $data_profile;
		if (!empty($extract) && $extract != 'invalid') {
			// $extract['nomor_rm'] = $extract['id_pasien'];
			// unset($extract['id_pasien']);
			// print_r($extract);
			$periksa = $this->check->no_doc($extract);
			if (empty($periksa)) {
				$this->load->view(conf('path_module_lab') . 'check-doc', $this->data);
			} else {
				$this->data['status'] = "exist";
				$dt_periksa = $periksa[0];
				$day_berlaku = (isset($dt_periksa->masa_berlaku)) ? $dt_periksa->masa_berlaku : 0;
				$day_berlaku_opt = (isset($dt_periksa->masa_berlaku_opt)) ? $dt_periksa->masa_berlaku_opt : 'day';
				$this->data['masa_berlaku'] = "";
				if ($day_berlaku > 0) {
					$date_start = $dt_periksa->update_hasil_at;
					$end_date = dateIndo(date("Y-m-d", strtotime("$date_start +$day_berlaku $day_berlaku_opt")));
					$this->data['masa_berlaku'] = "$end_date";
				}
				$this->data['periksa'] = $dt_periksa;
				
				$exp_idnotes = explode(",", $dt_periksa->id_notes);
				$notes = ($dt_periksa->id_notes != "") ? $this->check->_search_notes($exp_idnotes) : [];
				// $this->data['list_hasil'] = $this->pemeriksaan->_get_list_hasil($dt_periksa->id_jenis);
				$list_notes = [];
				if (!empty($notes)) {
					for ($i = 0; $i < sizeof($exp_idnotes); $i++) {
						$idn = $exp_idnotes[$i];
						foreach ($notes as $k => $nl) {
							if ($nl->id == $idn) array_push($list_notes, $nl);
						}
					}
				}
				$this->data['data_notes'] = $list_notes;
				$this->check->update($extract);
				$this->load->view(conf('path_module_lab') . 'check-doc', $this->data);
			}
		} else {
			$this->data['invalid'] = "Invalid No";
			$this->load->view(conf('path_module_lab') . 'check-doc', $this->data);
		}
	}
	public function get_active_lang()
	{
		header('Content-Type: application/json');
		echo json_encode($this->lang->language);
	}
}

/* End of file Pasien.php */
