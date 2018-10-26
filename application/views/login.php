<div style="min-height: 525px;">
<div class="row">
	<style type="text/css">
		.form-control{
			border-radius: 0px;
		}
	</style>
<div class="col-sm-4 col-sm-offset-4" style="padding-top: 80px;">
<?php echo $this->session->flashdata('errorMessage') ?>
<?php echo $this->session->flashdata('successMessage') ?>
<?php echo form_open('login_con/login_validation') ?>
<center><?php echo form_fieldset("<h2>Login Into Apps </h2>"); ?></center>

<div class="input-group form-group">
	<span class="input-group-addon"><i class="fa fa-user " aria-hidden="true"></i></span>
	<input id="username" type="text" class="form-control input-lg" name="username" placeholder="Username">
</div>
<div class="input-group form-group">
	<span class="input-group-addon"><i class="fa fa-key " aria-hidden="true"></i></span>
	<input id="password" type="password" class="form-control input-lg" name="password" placeholder="Password">
</div>
<div class="form-group">
	<center><input style="width: 100px;" type="submit" name="login" class="btn btn-info input-lg form-control" value="Login"></center>
</div>
<?php echo form_close() ?>
</div>
</div>	
</div>