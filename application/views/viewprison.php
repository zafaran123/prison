<!DOCTYPE html>
<html>
<div class="main">
	<div class="row">
						<div class="col-md-12">
							<!-- RECENT PURCHASES -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title" style="color:red">Control Panel: /Prison</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<div class="panel-body no-padding">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Prison Name</th>
												<th>Location</th>
												<th>Region</th>
												<th>District</th>
												<th>Status</th>
												<th>Action</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<?php
											foreach($res as $row){
												?>
												<tr>
													<td><?php  echo $row->prison_name?></td>
													<td><?php  echo $row->location?></td>
													<td><?php  echo $row->region?></td>
													<td><?php  echo $row->district?></td>
													<td><?php  echo $row->status?></td>
													<td>
														<a href="<?php echo base_url('index.php/Admin/editPrison/'.$row->id);  ?>">
														<button class="btn btn-success">Edit</button>&nbsp;&nbsp;
													</a>
													</td>
													<td><a href="<?php echo base_url('index.php/Admin/deletePrison/'.$row->id);  ?>" onclick="return confirm('Are you sure want to delete ?')?true:false;">
															<button onclick="deletePrison(<?php echo $row->id ?>)" class="btn btn-danger">Delete</button>
														</a>
													</td>
												</tr>
											<?php
											}
											 ?>
			
										</tbody>
									</table>
								</div>
								<div class="panel-footer">
									<div class="row">
										<div class="col-md-6"><span class="panel-note"><i class="fa fa-clock-o"></i> </span></div>
										<div class="col-md-6 text-right"><a href="#" class="btn btn-primary">View All Prison</a></div>
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