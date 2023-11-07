<!DOCTYPE html>
<html>

<head>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta charset="utf-8">
	<title><?= (isset($page_title)) ? $page_title : ''; ?></title>
	<link rel="icon" href="<?= base_url('assets/img/favicon.ico'); ?>" type="image/gif">
</head>

<body>
	<div class="row-banner">

	</div>
	<div class="body-print-pdf">
		<div class="table-inline">
			<br><br>
			<p align="center" class="tx-center row-title-page" style="font-size: 12px">
				<b class="indonesia">HASIL PEMERIKSAAN</b><br>
				<i class="english" style="font-size: 10px">EXAMINATION RESULTS</i>

			</p>
			<table class="dataTable minimize-padding-all table-desc v-center table-striped" width="100%">
				<tr>
					<td width="100px">
						<b>No. Tes</b><br>
						<i>Test. No</i>
					</td>
					<td width="10px">:</td>
					<td width="220px">
						<?= (isset($data_periksa->no_test)) ? $data_periksa->no_test : ''; ?>
					</td>
					<!-- 2nd col -->
					<td width="40px"></td>
					<td width="100px">
						<b>Dokter</b><br>
						<i>Doctor</i>
					</td>
					<td width="10px">:</td>
					<td width="200px"><?= (isset($data_periksa->dokter)) ? $data_periksa->dokter : ''; ?></td>
				</tr>
				<tr>
					<td>
						<b>Nama Pasien</b><br>
						<i>Full Name</i>
					</td>
					<td>:</td>
					<td><?= (isset($data_periksa->nama_pasien)) ? $data_periksa->nama_pasien : ''; ?></td>
					<td></td>
					<td>
						<b>Tgl. Sampling</b><br>
						<i>Sampling Date</i>
					</td>
					<td>:</td>
					<td><?= (isset($data_periksa->tgl_sampling)) ? $data_periksa->tgl_sampling : ''; ?> <?= (isset($data_periksa->jam_sampling)) ? $data_periksa->jam_sampling : ''; ?></td>
				</tr>
				<tr>
					<td>
						<b>Tgl. Lahir</b><br>
						<i>Date of Birth</i>
					</td>
					<td>:</td>
					<td class="tgl_lahir"><?= (isset($data_periksa->tgl_lahir)) ? $data_periksa->tgl_lahir : ''; ?></td>
					<td></td>
					<td>
						<b>Jenis Sample</b><br>
						<i>Sample Type</i>
					</td>
					<td>:</td>
					<td>
						<?php
						if (isset($data_periksa->nama_sample)) {
							echo $data_periksa->nama_sample . "<br><i>" . $data_periksa->nama_sample_en . "</i>";
						}
						?>
					</td>
				</tr>
				<tr>
					<td><b>Jenis Kelamin</b><br>
						<i>Gender</i>
					</td>
					<td>:</td>
					<td>
						<?php
						if (isset($data_periksa->jenis_kelamin)) {
							echo ucwords($data_periksa->jenis_kelamin);
							echo '<br>';
							echo ($data_periksa->jenis_kelamin == 'Perempuan') ? '<i>Female</i>' : '<i>Male</i>';
						}
						?>
					</td>
					<td></td>
					<td><b>Masa Berlaku</b><br>
						<i>Validity period</i>
					</td>
					<td>:</td>
					<td><?= (isset($data_periksa->masa_berlaku)) ? $data_periksa->masa_berlaku : ''; ?> Hari</td>
				</tr>
				<tr>
					<td><b>Alamat</b><br>
						<i>Address</i>
					</td>
					<td>:</td>
					<td class="alamat"><?= (isset($data_periksa->alamat)) ? $data_periksa->alamat : ''; ?></td>
					<td></td>
					<td><b>NIK/No. Paspor</b><br>
						<i>NIK/Passport No.</i>
					</td>
					<td>:</td>

					<td><?= (isset($data_periksa->no_identitas)) ? $data_periksa->no_identitas : ''; ?></td>
					<?php if (conf('lab_enable_select_provider') === TRUE) { ?>
						<td><b>Provider</b><br>
							<i>Provider</i>
						</td>
						<td>:</td>
						<td><?= (isset($data_periksa->provider)) ? $data_periksa->provider : ''; ?></td>
					<?php } ?>
				</tr>
				<?php if (conf('lab_enable_select_provider') === TRUE) { ?>
					<tr>
						<td></td>
						<td>:</td>
						<td class=""></td>
						<td></td>
						<td><b></b>
						</td>
						<td></td>
						<td></td>

						<td><b>Provider</b><br>
							<i>Provider</i>
						</td>
						<td>:</td>
						<td><?= (isset($data_periksa->provider)) ? $data_periksa->provider : ''; ?></td>

					</tr>
				<?php } ?>
			</table>
		</div>
		<p class="table-hasil">
			<?php if ($category == "covid") { ?>
		<table id="tableJenisPeriksa" cellspacing=0 class="dataTable minimize-padding-all v-center table-detail table-bordered table-striped with-border" width="100%">
			<thead>
				<tr>
					<th>
						<b>Pemeriksaan</b><br>
						<i>Examination</i>
					</th>
					<th>
						<b>Hasil</b><br>
						<i>Result</i>
					</th>
					<th><b>Nilai Rujukan</b><br>
						<i>Reference Value</i>
					</th>
					<th><b>Metode</b><br>
						<i>Method</i>
					</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$hasil_periksa_english = "";
				$nilai_rujukan_english = "";
				if (isset($detail_periksa)) {
					if (!empty($detail_periksa)) {
						foreach ($detail_periksa as $i => $dt) {
							$hasil = ($dt->hasil == null) ? "BELUM ADA" : $dt->hasil;
							$hasil_english = "";
							if ($hasil == 'Positif') {
								$hasil_english = "<br><i>Positive</i>";
							} else
										if ($hasil == 'Negatif') {
								$hasil_english = "<br><i>Negative</i>";
							} else
										if ($hasil == 'Reaktif') {
								$hasil_english = "<br><i>Reactive</i>";
							} else
										if ($hasil == 'Non Reaktif') {
								$hasil_english = "<br><i>Non Reactive</i>";
							}
							$nilai_english = "";
							$nil_rujukan = $dt->nilai_rujukan;
							if ($nil_rujukan == 'Positif') {
								$nilai_english = "<br><i>Positive</i>";
							} else
										if ($nil_rujukan == 'Negatif') {
								$nilai_english = "<br><i>Negative</i>";
							} else
										if ($nil_rujukan == 'Reaktif') {
								$nilai_english = "<br><i>Reactive</i>";
							} else
										if ($nil_rujukan == 'Non Reaktif') {
								$nilai_english = "<br><i>Non Reactive</i>";
							}
							if ($i == 0) {
								$hasil_periksa_english = str_replace("<br>", "", $hasil_english);
								$nilai_rujukan_english = str_replace("<br>", "", $nilai_english);
							}
							print_r($dt);
							$metode = ($i == 0) ? $data_periksa->metode : "";
							echo "<tr>
												<td>" . $dt->nama_pemeriksaan . "</td>
												<td align='center'>" . $hasil . "" . $hasil_english . "</td>
												<td align='center'>" . $nil_rujukan . "" . $nilai_english . "</td>
												<td>" . $metode . "</td>
											</tr>";
						}
					} else {
						echo '<tr><td colspan="4">HASIL BELUM KELUAR</td></tr>';
					}
				}
				?>
			</tbody>
		</table>
	<?php } else { // umum 
	?>
		<div class="row">
			<p><b style="font-size: 14px;"><?= $data_periksa->jenis_pemeriksaan; ?></b></p>
			<table width="100%" border="1" class="table-bordered" cellspacing="0" cellpadding="5">
				<thead>
					<tr>
						<th width="35px">No</th>
						<th align="left">Item Pemeriksaan</th>
						<th align="left">Hasil</th>
						<th align="left">Nilai Rujukan</th>
						<th align="left">Satuan</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$no = 1;
					foreach ($detail_periksa as $k => $item) {
						$dt = (object) $item;
					?>
						<tr>
							<td align="center"><?= $no; ?></td>
							<td><b><?= $dt->item; ?></b></td>
							<td><?= $dt->hasil; ?></td>
							<td>
								<pre style="display: block;white-space: pre-line;"><?= $dt->nilai_rujukan; ?></pre>
							</td>
							<td><?= $dt->satuan; ?></td>
						</tr>
						<?php
						$no++;
						if (isset($dt->sub)) {
							foreach ($dt->sub as $s => $subitem) {
								$sub = (object) $subitem;
						?>
								<tr>
									<td></td>
									<td style="padding-left: 20px"><?= $sub->item; ?></td>
									<td><?= (isset($sub->hasil)) ? $sub->hasil : ""; ?></td>
									<td>
										<pre style="display: block;white-space: pre-line;"><?= $sub->nilai_rujukan; ?></pre>
									</td>
									<td><?= $sub->satuan; ?></td>
								</tr>

								<!-- END SUB ROW ITEM PERIKSA -->
					<?php
							} // end for each subitem
						} // end for each iteme
					} ?>
				</tbody>
			</table>

		</div>
	<?php } ?>
	</p>
	<div class="p-notes" style="margin-top: 10px">
		<?php
		if (isset($data_notes)) {
			echo '<div>Note:</div> 
				<ul class="notes" style="margin-top: 0;margin-bottom: 25px">';
			foreach ($data_notes as $dt) {
				echo "<li style='text-align: justify'>
						<span>" . $dt->notes;
				if (isset($dt->english)) {
					echo "
						<br><i>" . $dt->english . "</i>";
				}
				echo "
						</li>";
			}
			echo '</ul>';
		}
		?>
	</div>
	<table width="100%">
		<tr>
			<td width="67%" style="vertical-align: bottom">
				<div class="text-center">
					<?php
					if (isset($detail_periksa)) {
						if (!empty($detail_periksa) && isset($image_qr) && $image_qr != "") {
							echo '<img src="' . $image_qr . '" class="image-ttd" width="100px">';
							echo "<br><span style='font-weight: bold;margin-top: 4px'>No. " . $code . "</span>";
						}
					}

					?>
				</div>
			</td>
			<td>
				<div class="" style="position: relative">
					<?php
					if (isset($detail_periksa)) {
						if (!empty($detail_periksa)) { ?>
							<?= (isset($doc_setting_profile->kabupaten)) ? ucwords($doc_setting_profile->kabupaten) : ""; ?>, <?= dateIndo($data_periksa->update_hasil_at); ?><br>
							Validator<br>
					<?php
							if (isset($ttd_hasil)) {
								echo '<img src="' . $ttd_hasil . '" style="max-width: 150px" class="image-ttd">';
							}
						}
					}
					?>
				</div>

			</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>

	</table>
	<p>
	<ul class="desc">
		<!-- <li><?= $masa_berlaku_desc; ?></li> -->
		<!-- <li><?= $valid_doc_info; ?></li> -->
		<li><span>Scan QRCode dan klik link didalamnya untuk memastikan bahwa dokumen ini benar dikeluarkan oleh <?= (isset($doc_setting_profile->nama)) ? $doc_setting_profile->nama : ""; ?></span>
			<br><i>Scan the QR Code and click the link in it to ensure that this document was issued by <?= (isset($doc_setting_profile->nama)) ? $doc_setting_profile->nama : ""; ?></i>
		</li>
		<li>
			Checked Qrcode by Medicloud.co.id
		</li>
		<!-- <li><?= $info_reg_kemenkes; ?></li> -->
		<!-- <li><span><?= (isset($doc_setting_profile->nama)) ? $doc_setting_profile->nama : ""; ?> terdaftar sebagai Pemeriksa Antigen Covid 19 di Kementerian Kesehatan Republik Indonesia</span>
				<br><i><?= (isset($doc_setting_profile->nama)) ? $doc_setting_profile->nama : ""; ?> is registered as a Covid 19 Antigen Examiner at the Ministry of Health of the Republic of Indonesia </i>
			</li> -->
	</ul>
	<?php
	//$alias_m=($day_berlaku=='day') ? 'Hari': 'Bulan';
	//echo $day_berlaku." ".$alias_m;

	?>
	</p>
	<?php if (conf('lab_print_surat_keterangan') === TRUE) { ?>
		<p style="page-break-before: always;" class="suket">
		<p class="text-center" style="text-align: center;font-size: 12px"><b>SURAT KETERANGAN</b>
			<br><i>Medical Information Letter</i>
		</p>
		<p>
			Yang bertanda tangan di bawah ini, dokter menerangkan bahwa:<br>
			<i>To Whom it may concern, the Doctor explains that</i>:
		</p>
		<table width="100%">
			<tr>
				<td width="30%">Nama/<i>Name</i></td>
				<td width="5%">:</td>
				<td><b><?= (isset($data_periksa->nama_pasien)) ? $data_periksa->nama_pasien : ''; ?></b></td>
			</tr>
			<tr>
				<td width="30%">Tanggal Lahir/<i>Date of Birth</i></td>
				<td width="5%">:</td>
				<td><?= (isset($data_periksa->tgl_lahir)) ? $data_periksa->tgl_lahir : ''; ?></td>
			</tr>
			<tr>
				<td width="30%">Alamat/<i>Address</i></td>
				<td width="5%">:</td>
				<td><?= (isset($data_periksa->alamat)) ? $data_periksa->alamat : ''; ?></td>
			</tr>
			<tr>
				<td width="30%">No Identitas/<i>Identity No</i></td>
				<td width="5%">:</td>
				<td><?= (isset($data_periksa->no_identitas)) ? $data_periksa->no_identitas : ''; ?></td>
			</tr>
			<tr>
				<td width="30%">Kewarganegaraan/<i>Nationality</i></td>
				<td width="5%">:</td>
				<td><?= (isset($data_periksa->kewarganegaraan)) ? $data_periksa->kewarganegaraan : ''; ?></td>
			</tr>
		</table>
		<p>Telah dilakukan pemeriksaan <b><?= $detail_periksa[0]->nama_pemeriksaan; ?></b> dengan hasil <b><?= $detail_periksa[0]->hasil; ?></b>. Surat keterangan ini hanya berlaku <?= $masa_berlaku_indo; ?> sejak tanggal pemeriksaan.
			Terlampir hasil pemeriksaan <b><?= $detail_periksa[0]->nama_pemeriksaan; ?></b> yang merupakan bagian yang tidak terpisahkan dari surat keterangan ini.
		</p>
		<p>
			Demikian surat keterangan ini dibuat dengan sebenarnya dan mohon dipergunakan sebagaimana mestinya.
		</p>
		<p style="font-style: italic">
			<b><?= $detail_periksa[0]->nama_pemeriksaan; ?></b> examination has been carried out with result <b><?= $hasil_periksa_english; ?></b>. This certificate is only valid for <?= $masa_berlaku_english; ?> since the results came out (the result is attached).
		</p>
		<p style="font-style: italic">
			This statement is thus made properly and please use as appropriate
		</p>

		<p></p>
		<p style="text-align: center">
			Tanggal/<i>Date</i>: <?= date("d-m-Y", strtotime($data_periksa->update_hasil_at)); ?><br>
			Waktu surat dikeluarkan/<i>Issued time of letter</i>: <?= date("H:i", strtotime($data_periksa->update_hasil_at)); ?> WIB<br>
			Dokter Pemeriksa/<i>Doctor Incharge</i><br>
		<p></p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<?php
		if (isset($logo_ttd)) {
			echo '<img src="' . $logo_ttd_suket . '" style="" class="image-ttd2">';
		}
		?>
		<div class="doc-ttd2"><?= (isset($data_periksa->dokter)) ? $data_periksa->dokter : ''; ?></div>
		</p>
	<?php } // end print surat keterangan 
	?>
	</div>

</body>

</html>
<style>
	p.suket {
		text-align: justify;
		text-justify: inter-word;
	}

	.image-ttd2 {
		z-index: 1;
		width: 200px;
		margin-left: 300px;
		margin-top: -70px;
		position: absolute;
		top: 0px;
		left: 50px;
	}

	div.doc-ttd2 {
		z-index: 2;
		text-align: center;
		font-weight: bold;
	}

	.suket-ttd {
		background-image: url('<?= $logo_ttd_suket; ?>');
		background-repeat: no-repeat;
		height: 200px;
		vertical-align: bottom;
		background-size: 570px 350px;
		background-position: center;
	}

	body {
		font-family: arial-narrow;
		font-size: 10px
	}

	.row-banner {
		/* border: 1px solid #ff0000; */
	}

	/* pdf print setting */
	.row-title-page {
		margin-bottom: 20px;
	}

	table tr td {
		vertical-align: top;
	}

	table tr td {
		font-size: 10px;
		font-family: 'arial-narrow';
		line-height: 1.2
	}

	table.table-desc {
		line-height: 1.8
	}

	.page-header-pdf {
		padding-top: 0cm;
		padding-left: 0cm;
		padding-right: 0cm
	}

	.body-print-pdf {
		padding-left: 2cm;
		padding-right: 2cm;
	}

	.page-footer-pdf_old {
		text-align: center;
		position: relative;
		background-image: url(<?= base_url('assets/img/ym-doc-footer.png'); ?>);
		background-repeat: no-repeat;
		background-size: 100% 100%;
		z-index: 1000;
		margin-top: -33px;
	}

	.textLayer span {
		z-index: 5000
	}

	.page-footer-pdf .page-footer-text {
		z-index: 0;
		position: absolute;
		border: 1px solid #000000;
		text-align: center;
	}

	.page-footer-text {
		color: #fff;
		font-size: 12px;
		font-weight: bold;
		padding: 40px 3px 12px 3px
	}

	/* end pdf print setting */
	.image-ttd {
		position: relative;

	}

	.row-print {
		width: 100%;
		margin: 10px;
		margin-top: 10px;
		display: block;
	}

	.col-lg-6 {
		border: 1px solid #ff0000;
		width: 45%;
		padding: 0;
		margin: 0;
		vertical-align: top;
	}

	.row-print table {
		width: 100%;
		display: table;
	}

	.table-detail thead tr {
		background: #ccc;
	}

	.table-detail tr th {
		font-weight: normal;
		font-size: 10px;
		font-family: 'arial-narrow';
		line-height: 1.2;
	}

	.table-detail tr th,
	.table-detail tr td {
		padding: 5px 10px;
		border: 0.2px solid #000;
	}

	.pull-right {
		float: right;
	}

	.ttd {
		width: 200px;
	}

	ul.desc {
		padding-left: 20px
	}

	ul.desc li {
		text-align: justify;
		font-size: 10px;
		font-family: 'arial-narrow'
	}

	ul.notes li {
		font-size: 10px;
		font-family: 'arial-narrow'
	}
	.table-bordered{
		border-left: 0;
	}
	.table-bordered tr th{
		background: #cfe2ff;
	}
	.table-bordered th,
	.table-bordered td {
		border-left: 1px solid #000;
		border-right: 0;
		border-top: 1px solid #000;
		border-bottom: 0;
	}
</style>
