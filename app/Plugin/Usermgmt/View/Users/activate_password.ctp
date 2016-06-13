
<div class="landtop set-main">
    <div id="login" class="login text-center">
        <div class="pinhp-form-inner">
            <div id="login-form-div" >
                <h3>Reset Password</h3>
                <div class="hr">
                </div>
                <div id="failmessage">

                </div>
                    <?php echo $this->Form->create('User', array('class'=>'login-form pinhp-form')); ?>
                <p>
                    <span aria-hidden="true" class="glyphicon glyphicon-user"></span>
                        <?php echo $this->Form->input('password', array('type'=>'password', 'label'=>false, 'div'=>false)); ?>
                </p>
                <p>
                    <span aria-hidden="true" class="glyphicon glyphicon-lock"></span>
					<?php echo $this->Form->input('cpassword', array('type'=>'password', 'label'=>false, 'div'=>false)); ?>
                </p>
                <p class="logcheck">

                    <?php   if (!isset($ident)) { $ident=''; }
						if (!isset($activate)) { $activate=''; } ?>
				<?php echo $this->Form->hidden('ident', array('value'=>$ident)); ?>
				<?php echo $this->Form->hidden('activate', array('value'=>$activate)); ?>
				<?php echo $this->Form->Submit('Save New Password', array('div'=>false, 'class'=>'btn btn-primary')); ?>
                </p>
                    <?php 
                    echo $this->Form->end();
                    ?>
            </div>
        </div>
    </div>
</div> 