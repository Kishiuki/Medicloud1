
<!-- Page Content - Only Page Elements Here-->
<div class="page-content footer-clear">

	<!-- Page Title-->
	<div class="pt-3">
		
	</div>

	<div class="card card-style">
		<div class="content">
			<h1 class="mb-0 pt-2">Kwitansi</h1>
		
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
				Belum ada riwayat pembayaran
				</h5>
				</div>

				</a>
				</div>
				</div>
				</div>';
			}else{
				foreach($recently_pemeriksaan as $dt){
					$status=($dt->bayar>=$dt->biaya) ? "LUNAS": "BELUM LUNAS";
					$icon=($status=="LUNAS") ? 'gradient-green bi-check-lg' : 'gradient-red bi-clock';
					$color=($status=="LUNAS") ? 'color-green-dark': 'color-red-dark';
					$link=($status=="LUNAS") ? base_url('webview/lab/pemeriksaan/print/?viewid='.$dt->id.'&tn='.strtolower($dt->no_test)).'&pdf=true' : '#';
					?>
					<div class="list-group list-custom list-group-m list-group-flush rounded-xs">
						<div  download class="list-group-item">
							<div class="col-6">							
								<strong class="color-blue-dark"><?=$dt->jenis_pemeriksaan;?></strong>
								<em class="color-green-dark">Nama : <?=$dt->nama_pasien;?></em><br>
								<em class="color-green-dark">NIK : <?=$dt->nik;?></em>
							</div>
							<div class="col-6 text-end">
								<em class="pt-1 mb-2 color-green-dark">Rp. <?=number_format($dt->biaya);?></em><br>
								<em class="pt-1 mb-2 color-red-dark "><?=$status;?></em><br>
								<!-- <i class="bi bi-file-earmark-pdf color-red-dark font-10"></i>	 -->
								<em class="fst-normal opacity-30"> <?=date("d M Y",strtotime($dt->tgl_periksa));?></em>
							</div>
						</div>
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
