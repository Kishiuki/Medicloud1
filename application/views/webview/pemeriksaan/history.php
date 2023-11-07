
<!-- Page Content - Only Page Elements Here-->
<div class="page-content footer-clear">

	<!-- Page Title-->
	<div class="pt-3">
		
	</div>

	<div class="card card-style">
		<div class="content">
			<h1 class="mb-0 pt-2">Riwayat Pemeriksaan</h1>
		
	<!-- <div class="form-custom form-label form-border form-icon mt-0 mb-0">
		<i class="bi bi-check-circle font-15"></i>
		<select class="form-select rounded-xs font-15" id="select_filter" aria-label="Floating label select example">
			<option value="14d" <?=(isset($getm) && $getm=='14d') ? 'selected' : '';?>>Terkini</option>
			<option value="1m" <?=(isset($getm) && $getm=='1m') ? 'selected' : '';?>>1 Bulan Terakhir</option>
			<option value="3m" <?=(isset($getm) && $getm=='3m') ? 'selected' : '';?>>3 Bulan Terakhir</option>
			<option value="6m" <?=(isset($getm) && $getm=='6m') ? 'selected' : '';?>>6 Bulan Terakhir</option>
		</select>
	</div> -->
	<div class="collapse show" id="tab-4" data-bs-parent="#tab-group-2">
		<?php
		if(isset($recently_pemeriksaan)){
			if(empty($recently_pemeriksaan)){
				echo '
				<div class="alert p-0 alert-dismissible fade show mb-n3" role="alert">
				<div class="gradient-gray shadow-bg shadow-bg-s">
				<div class="content">
				<a href="#" class="d-flex">
				<div class="align-self-center">
				<h1 class="mb-0 font-20"><i class="bi bi-check-circle color-white pe-3"></i></h1>
				</div>
				<div class="align-self-center">
				<h5 class="color-white font-700 mb-0 mt-0">
				Tidak ada pemeriksaan dalam 14 hari terakhir.
				</h5>
				</div>

				</a>
				</div>
				</div>
				</div>';
			}else{
				foreach($recently_pemeriksaan as $dt){
					$status=($dt->status=="") ? "PROSES": $dt->status;
					$icon=($status=="SELESAI") ? 'gradient-green bi-check-lg' : 'gradient-red bi-clock';
					$link=($status=="SELESAI") ? base_url('webview/lab/pemeriksaan/print/?viewid='.$dt->id.'&tn='.strtolower($dt->no_test)).'&pdf=true' : '#';
					?>
					<div class="list-group list-custom list-group-m list-group-flush rounded-xs">
						<a href="<?=$link;?>" download class="list-group-item">
							<i class="has-bg color-white rounded-xs bi <?=$icon;?>"></i>
							<div>
								<strong><?=$dt->jenis_pemeriksaan;?></strong>
								<em class="color-green-dark">Nama : <?=$dt->nama_pasien;?></em><br>
								<em class="color-green-dark">NIK : <?=$dt->nik;?></em>
							</div>
							<div class="badge bg-transparent color-theme text-end font-15">
								<strong class="pt-1 mb-2 color-green-dark"><?=$status;?></strong>
								<!-- <i class="bi bi-file-earmark-pdf color-red-dark font-10"></i>	 -->
								<em class="fst-normal font-12 opacity-30"> <?=date("d M Y",strtotime($dt->tgl_periksa));?></em>
							</div>
						</a>
					</div>
					<?php
						} // end foreach pemeriksaan
					}
				}
				?>
				
			</div>

		</div>
		<style>
		.list-group{
			border-bottom: 1px solid #ccc;
		}
		.list-group a div{
			line-height: 1.3;
		}
	</style>


		</div>
	</div>

</div>
    <!-- End of Page Content-->