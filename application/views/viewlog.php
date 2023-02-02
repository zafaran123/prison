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
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>F-Name</th>
												<th>L-Name</th>
												<th>User-Name</th>
												<th>Position</th>
												<th>Login-Date</th>
												<th>Login-Time</th>
												<th>Police-No</th>
											</tr>
										</thead>
										<tbody>
											<?php
											foreach($res as $row){
												?>
												<tr>
													<td><?php  echo $row->first_name?></td>
													<td><?php  echo $row->last_name?></td>
													<td><?php  echo $row->user_name?></td>
													<td><?php  echo $row->position ?></td>
													<td><?php  echo $row->log_date?></td>
													<td><?php  echo $row->log_time ?></td>
													<td><?php  echo $row->police_no ?></td>
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