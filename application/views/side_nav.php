<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="<?php echo base_url() ?>" class="active"><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
						<li><a href="<?php echo base_url('index.php/Admin/viewLog') ?>" class=""><i class="lnr lnr-cog"></i> <span>Logs</span></a></li>
						<li>
							<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>View</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="<?php echo base_url('index.php/Admin/viewPrisoner') ?>" class="">Prisoner</a></li>
									<li><a href="<?php echo base_url('index.php/Admin/viewPolice') ?>" class="">Police</a></li>
									<li><a href="<?php echo base_url('index.php/Admin/viewRemand') ?>" class="">Remande Prison</a></li>
									<li><a href="<?php echo base_url('index.php/Admin/viewPrison') ?>" class="">Prison</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#subPagess" data-toggle="collapse" class="collapsed"><i class="lnr lnr-text-format"></i> <span>Locked Acnt</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPagess" class="collapse ">
								<ul class="nav">
									<li><a href="<?php echo base_url('index.php/Admin/PasivePolice') ?>" class="">Police</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#release" data-toggle="collapse" class="collapsed"><i class="lnr lnr-thumbs-up"></i> <span>Released</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="release" class="collapse ">
								<ul class="nav">
									<li><a href="<?php echo base_url('index.php/Admin/PasivePrisoner') ?>" class="">Prisoner</a></li>
									<li><a href="<?php echo base_url('index.php/Admin/pasiveRemand') ?>" class="">Remande Prison</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#profile" data-toggle="collapse" class="collapsed"><i class="lnr lnr-user"></i> <span>My Account</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="profile" class="collapse ">
								<ul class="nav">
									
									<li><a href="<?php echo base_url('index.php/Admin/LoginForm') ?>" class="">Log Out</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->