<!DOCTYPE html>
<html>

<head>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta charset="utf-8">
	<title><?= (isset($page_title)) ? $page_title : ''; ?></title>
	<link rel="icon" href="<?= base_url('assets/img/favicon.ico'); ?>" type="image/gif">
</head>

<body>
	<div class="row-banner;">

	</div>
	<div class="body-print-pdf">
		<div class="table-inline">
			<p align="center" class="tx-center row-title-page" style="font-size: 13px;"><b><u>HASIL PEMERIKSAAN LABORATORIUM</u></b></p>
			<table class="dataTable minimize-padding-all table-desc v-center table-striped" width="100%">
				<tr>
					<td width="100px">ID</td>
					<td width="10px">:</td>
					<td width="220px">
						<?= (isset($data_periksa->no_test)) ? $data_periksa->no_test : ''; ?>
					</td>
					<!-- 2nd col -->
					<td width="40px"></td>
					<td width="100px">Dokter</td>
					<td width="10px">:</td>
					<td width="200px"><?= (isset($data_periksa->dokter)) ? $data_periksa->dokter : ''; ?></td>
				</tr>
				<tr>
					<td>Nama Pasien</td>
					<td>:</td>
					<td><?= (isset($data_periksa->nama_pasien)) ? $data_periksa->nama_pasien : ''; ?></td>
					<td></td>
					<td>Tgl. Sampling</td>
					<td>:</td>
					<td><?= (isset($data_periksa->tgl_sampling)) ? $data_periksa->tgl_sampling : ''; ?></td>
				</tr>
				<tr>
					<td>Tgl. Lahir</td>
					<td>:</td>
					<td class="tgl_lahir"><?= (isset($data_periksa->tgl_lahir)) ? $data_periksa->tgl_lahir : ''; ?></td>
					<td></td>
					<td>Jenis Sample</td>
					<td>:</td>
					<td><?= (isset($data_periksa->nama_sample)) ? $data_periksa->nama_sample : ''; ?></td>
				</tr>
				<tr>
					<td>Jenis Kelamin</td>
					<td>:</td>
					<td>
						<?= (isset($data_periksa->jenis_kelamin)) ? ucwords($data_periksa->jenis_kelamin) : ''; ?>
					</td>
					<td></td>
					<td>NIK</td>
					<td>:</td>
					<td><?= (isset($data_periksa->no_identitas)) ? $data_periksa->no_identitas : ''; ?></td>
				</tr>
				<tr>
					<td>Alamat</td>
					<td>:</td>
					<td class="alamat"><?= (isset($data_periksa->alamat)) ? $data_periksa->alamat : ''; ?></td>
					<td></td>
					<td>Provider</td>
					<td>:</td>
					<td><?= (isset($data_periksa->provider)) ? $data_periksa->provider : ''; ?></td>
				</tr>
			</table>
		</div>
		<p class="table-hasil">
		<table id="tableJenisPeriksa" cellspacing=0 class="dataTable minimize-padding-all v-center table-detail table-bordered table-striped with-border" width="100%">
			<thead>
				<tr>
					<th>Pemeriksaan</th>
					<th>Hasil</th>
					<th>Nilai Rujukan</th>
					<th>Metode</th>
				</tr>
			</thead>
			<tbody>
				<?php

				if (isset($detail_periksa)) {
					if (!empty($detail_periksa)) {
						foreach ($detail_periksa as $i => $dt) {
							$hasil = ($dt->hasil == null) ? "BELUM ADA" : $dt->hasil;
							$metode = ($i == 0) ? $dt->metode : "";
							echo "<tr>
												<td>" . $dt->nama_pemeriksaan . "</td>
												<td align='center'>" . $hasil . "</td>
												<td align='center'>" . $dt->nilai_rujukan . "</td>
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
		</p>
		<div class="p-notes" style="margin-top: 10px">
			<?php
			if (isset($data_notes)) {
				echo '<div >Note:</div> 
				<ul class="notes" style="margin-top: 0;margin-bottom: 25px">';
				foreach ($data_notes as $dt) {
					echo "<li style='text-align: justify'>" . $dt->notes . "</li>";
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
								echo '<img src="' . $image_qr . '" class="image-ttd" >';
								echo "<br><span style='font-size: 11px;font-weight: bold;margin-top: 4px'>No. " . $code . "</span>";
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
								Bekasi, <?= dateIndo($data_periksa->update_hasil_at); ?><br>
								Validator<br>
						<?php
								echo '<img src="' . $logo_ttd . '" style="max-width: 200px" class="image-ttd">';
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
			<li><?= $masa_berlaku_desc; ?></li>
			<li><?= $valid_doc_info; ?></li>
		</ul>
		<?php
		//$alias_m=($day_berlaku=='day') ? 'Hari': 'Bulan';
		//echo $day_berlaku." ".$alias_m;

		?>
		</p>

	</div>

</body>

</html>
<style>
	body {
		font-family: arial;

	}

	.row-banner {
		border: 1px solid #ff0000;
	}

	/* pdf print setting */
	.row-title-page {
		margin-bottom: 20px;
	}

	table tr td {
		vertical-align: top;
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
	}
</style>
