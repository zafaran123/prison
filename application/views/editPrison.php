<!DOCTYPE html>
<html>
<div class="main">
	<div class="row">
						<div class="col-md-12">
							<!-- RECENT PURCHASES -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title" style="color:red">Control Panel: / Login Infor</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<div class="panel-body no-padding">
									<h3>Preson Form</h3>
	<form <?php echo form_open('Admin/editPrisonAction', 'role="form"') ?>
		<div class="row">
			<input type="hidden" name="id" value="<?php echo $row['id'] ?>">
			<div class="col-md-4">
				<div class=form-group">
					<label>Preson Name</label>
					<input type="text" name="prison_name" value="<?php echo $row['prison_name']?>" class="form-control">
				</div>
			</div>
			<div class="col-md-4">
				<div class=form-group">
					<label>Location</label>
					<input type="text" name="location" value="<?php echo $row['location']?>" class="form-control">
				</div>
			</div>
			<div class="col-md-4">
				<div class=form-group">
					<label>Region</label>
					<input type="text" name="region" value="<?php echo $row['region']?>" class="form-control">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class=form-group">
					<label>District</label>
					<input type="text" name="district" value="<?php echo $row['district']?>" class="form-control">
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
					<input type="text" name="status" value="<?php echo $row['status']?>" class="form-control">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<br>
				<div clas="mb-1 d-flex justify-content-end">
				<button type="submit" class="btn btn-success">Edit Prison</button>
				<div>
			</div>
		</div>
		
	</form>
	<span style="color:red"><?php echo $this->session->flashdata('msg') ?></span>
								</div>
								<div class="panel-footer">
									<div class="row">
										<div class="col-md-6"><span class="panel-note"><i class="fa fa-clock-o"></i> Last 24 hours</span></div>
										<div class="col-md-6 text-right"><a href="#" class="btn btn-primary">View All Logs</a></div>
									</div>
								</div>
							</div>
							<!-- END RECENT PURCHASES -->
						</div>
						
					</div>
</div>
<script>
	function deletePrison(id){
		if 
			
		window.alert('Are you sure'){

		}

	}
</script>