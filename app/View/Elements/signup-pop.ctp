<div class="hide-signup">
    <div class="landtop set-main">
                    <?php
                    echo $this->Html->image('/img/closebtn.png',array( 'class'=>'closebtn','alt'=>'Boostnext','title'=>'Boostnext'));
                    ?>
        <div id="signup" class="login text-center">
            <div class="pinhp-form-inner">
                <div id="login-form-div" >
                    <h2 class="category-upsell-title">Sign up for free today!</h2>
                    <button class="btn-facebook gaf-fb-connected-button btn btn-large" data-track_click="true" data-category="pinterest_button"
                            data-action="login-facebook" type="button"> <i class="fa fa-facebook"></i> <span>Sign up with Facebook</span> </button>
                    <div class="hr">
                        <div class="inner">or</div>
                    </div>
                    <?php echo $this->Form->create('User',array('class'=>'login-form pinhp-form','id'=>'signuppop'));?>

                    <p><span aria-hidden="true" class="glyphicon glyphicon-envelope"></span>
                        <?php echo $this->Form->input('email',array('label'=>false,'div'=>false,'placeholder'=>'Email Address','class'=>'chkemail'));?>
                    </p>
                    <p><span aria-hidden="true" class="glyphicon glyphicon-user"></span>
                        <?php echo $this->Form->input('username',array('label'=>false,'div'=>false,'placeholder'=>'Username'));?>
                    </p>
                    <p><span aria-hidden="true" class="glyphicon glyphicon-lock"></span>
                        <?php echo $this->Form->input('password',array('id'=>'password','label'=>false,'div'=>false,'type'=>'password','placeholder'=>'Password','class'=>'password'));?>
                    </p>
                    <p><span aria-hidden="true" class="glyphicon glyphicon-lock"></span>
                        <?php echo $this->Form->input('cpassword',array('label'=>false,'div'=>false,'type'=>'password','placeholder'=>'Confirm Password','class'=>'password'));?>
                    </p>
                    <p>
                        <img class="captcha-form" id="captcha" src="<?php echo $this->Html->url('/Pages/captcha_image');?>" alt="Captcha" title="Refresh Captcha" />             
                        <a class="loading-captcha"  href="javascript:void(0);" onclick='javascript:document.images.captcha.src = "<?php echo $this->Html->url("/Pages/captcha_image");?>?" + Math.round(Math.random(0) * 1000) + 1' >(Reload)</a>
                    </p>
                    <p>
                         <?php echo $this->Form->input('captcha',array('label'=>false,'div'=>false,'placeholder'=>'Confirm Captcha'));?>
                    </p>
                    <h4 class="signup-form-title">I want to</h4>
                    <div class="hir-wk erorradio">
                            <?php echo $this->Form->input('user_group_id',array('before'=>'<span>','separator'=> '</span><span>','after'=>'</span>','div'=>false,'legend'=>false,'type'=>'radio','options'=>array('4'=>'Hire','5'=>'Work')))?>
                    </div>

                    <p>
                        <?php echo $this->Form->Submit('Create account',array('class'=>'creatlogin','div'=>false,'label'=>false));?>
                    </p>
                    <p>By registering you confirm that you accept the  <a href="#">Terms 
                            and Conditions</a> and <a href="#">Privacy Policy</a></p>
                    <?php echo $this->Form->end();?>
                </div>
            </div>
        </div>
    </div> 
</div>