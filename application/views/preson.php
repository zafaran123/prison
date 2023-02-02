<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
	<h3>Preson Form</h3>
	<form <?php echo form_open('Admin/addPrisonAction', 'role="form"') ?>>
		<div class="row">
			<div class="col-md-4">
				<div class=form-group">
					<label>Preson Name</label>
					<input type="text" name="prison_name" class="form-control">
				</div>
			</div>
			<div class="col-md-4">
				<div class=form-group">
					<label>Location</label>
					<input type="text" name="location" class="form-control">
				</div>
			</div>
			<div class="col-md-4">
				<div class=form-group">
					<label>Region</label>
					<input type="text" name="region" class="form-control">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class=form-group">
					<label>District</label>
					<input type="text" name="district" class="form-control">
				</div>
			</div>
			<!-- <div class="col-md-4">
				<div class=form-group">
					<label>Photo</label>
					<input type="file" name="photo" class="form-control">
				</div>
			</div>-->
			<div class="col-md-4">
				<div class=form-group">
					<label>Status</label>
					<input type="text" name="status" class="form-control">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<br>
				<div clas="mb-1 d-flex justify-content-end">
				<button type="submit" class="btn btn-success">Add Preson</button>
				<div>
			</div>
		</div>
		
	</form>
	<span style="color:red"><?php echo $this->session->flashdata('msg') ?></span>

</div>
</div>
</div>