<!DOCTYPE html>
<html>
<div class="main">
	<div class="row">
						<div class="col-md-12">
							<!-- RECENT PURCHASES -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title" style="color:red">Control Panel: / Prisoner</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<div class="panel-body no-padding">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>F_Name</th>
												<th>L_Name</th>
												<th>Gender</th>
												<th>DOB</th>
												<th>Addres</th>
												<th>Crime</th>
												<th>Juge Date</th>
												<th>Relesed Date</th>
												<th>Status</th>
												
												

											</tr>
										</thead>
										<tbody>
										<?php
											foreach($res as $row){
										?>
											<tr>
												<td><?php  echo $row->first_name?></td>
												<td><?php  echo $row->last_name ?></td>
												<td><?php  echo $row->gender ?></td>
												<td><?php  echo $row->birth_date ?></td>
												<td><?php  echo $row->address?></td>
												<td><?php  echo $row->crime ?></td>
												<td><?php  echo $row->judgment_date ?></td>
												<td><?php  echo $row->release_date?></td>
												<td><span class="label label-success"><?php  echo $row->status  ?></span></td>
											</tr>
											<?php
												}
											 ?>
										</tbody>
									</table>
								</div>
								<div class="panel-footer">
									<div class="row">
										<div class="col-md-6"><span class="panel-note"><i class="fa fa-clock-o"></i> Last 24 hours</span></div>
										<div class="col-md-6 text-right"><a href="#" class="btn btn-primary">View All Prisoner</a></div>
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