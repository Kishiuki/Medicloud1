
<!-- Page Content - Only Page Elements Here-->
<div class="page-content footer-clear">

	<!-- Page Title-->
	<div class="pt-3">
		
	</div>

	<div class="card card-style">
		<div class="content">
			<!-- <h1 class="mb-0 pt-2">Daftar</h1>  -->
			<h4 class="text-disabled">Registrasi Pemeriksaan</h4>
			<form action="#" method="post" name="form-register">
				<div class="form-group">
					<label class="form-label">Registrasi untuk?</label>
					<div class="row-form">
						<select name="reg_as" class="form-control input-sm">
							<option value="sendiri">Saya Sendiri</option>
							<option value="keluarga">Keluarga</option>
							<option value="kerabat">Kerabat</option>
							<option value="teman">Teman</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="form-label">Tanggal & Jam Rencana Pemeriksaan</label>
					<div class="input-group">
						<input type="text" name="tgl_periksa" class="form-control input-sm reset-form" placeholder="Tanggal" value="<?=date("Y-m-d");?>" autocomplete="off" required autofocus="">
						<span class="input-group-append"><i class="input-group-text">/</i></span>
						<input type="text" name="jam_periksa" class="form-control input-sm reset-form time-format" placeholder="00:00" value="" autocomplete="on" required style="max-width: 80px">
					</div>
					
				</div>
				<div class="form-group">
					<label class="form-label">Jenis Pemeriksaan</label>
					<select class="form-control input-sm" name="jenis_pemeriksaan" id="search_jenis_pemeriksaan"></select>
				</div>
				<div class="form-group">
					<label class="form-label">Nama Lengkap</label>
					<input type="text" name="nama_lengkap" class="form-control input-sm reset-form" placeholder="Nama Lengkap" value="" autocomplete="off" required autofocus="">
				</div>
				<div class="form-group">
					<label class="form-label">No Identitas Pasien *<br><span class="text-normal">(NIK/SIM/Paspor atau lainnya)</span></label>
					<input type="text" name="nik" class="form-control input-sm number" required="" placeholder="No Identitas Pasien" autocomplete="off">
				</div>
				<div class="form-group">
					<label class="form-label">Tempat/Tanggal Lahir</label>
					<div class="input-group">
						<input type="text" name="tempat_lahir" class="form-control input-sm reset-form" placeholder="Tempat" value="" autocomplete="off" required>
						<span class="input-group-addon"><i class="fa fa-2x"> / </i></span>
						<input type="text" name="tgl_lahir" class="form-control input-sm" placeholder="Tgl. Lahir" value="" autocomplete="off" required>
					</div>
				</div>
				<div class="form-group">
					<label class="form-label">Jenis Kelamin</label>
					<div class="row-form">
						<label class="btn btn-flat btn-info btn-xs mt-0"><input type="radio" name="jenis_kelamin" value="laki-laki"> Laki-Laki</label>
						<label class="btn btn-flat btn-warning btn-xs mt-0"><input type="radio" name="jenis_kelamin" value="perempuan"> Perempuan</label>
					</div>
				</div>
				<div class="form-group">
					<label class="form-label">No Hp</label>
					<input type="text" name="no_hp" class="form-control input-sm" placeholder="No Hp" value="" autocomplete="off" required>
				</div>
				<div class="form-group">
					<label class="form-label">Email</label>
					<input type="text" name="email" class="form-control input-sm" placeholder="Email" value="" autocomplete="off" required>
				</div>
				<div class="form-group">
					<label class="form-label">Alamat</label>
					<textarea name="alamat" class="form-control input-sm" placeholder="Alamat" value="" autocomplete="off" required></textarea>
				</div>
				<div class="form-group">
					<label class="form-label">Kode Sales (Opsional)</label>
					<input type="text" class="form-control input-sm" name="kode_sales" placeholder="Kode Sales" value="" autocomplete="on">
				</div>
				<p></p>
				<button type="button" id="submit_register" class="btn btn-full bg-blue-dark rounded-xs text-uppercase font-700 w-100 btn-s mt-4" type="submit">Registrasi Sekarang</button>
				
				<p></p>
			</form>
			<style>
			.form-group{
				margin-top: 5px;
				margin-bottom: 5px;
			}
			.form-label{
				margin-bottom: 2px
			}
			/* .select2-container--default .select2-results__option--highlighted[aria-selected] {
     background-color: #F0F1F2;
     color: #393A3B; 
} */
		</style>

	</div>
</div>

</div>
    <!-- End of Page Content-->
