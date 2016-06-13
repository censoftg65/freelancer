<?php ?>
<div id="signupmodal" class="modal fade" role="dialog">
    <div class="modal-dialog signforgot">
        <div class="modal-content text-center">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <?php echo $this->Html->image('pop-logo.jpg',array('width'=>'251','height'=>'65'));?>
            </div>
            <?php echo $this->Form->create('User',array('url'=>'/','class'=>'popupSign','id'=>'signuppop'));?>
            <div class="modal-body">
                <label>Sign up for free today!</label>      
                <button type="button" data-action="login-facebook" data-category="pinterest_button" data-track_click="true" class="btn-facebook gaf-fb-connected-button btn btn-large"> <i class="fa fa-facebook"></i> <span>Sign up with Facebook</span> </button>
                <div class="hr">
                    <div class="inner">OR</div>
                </div>
                <p><?php  echo $this->Form->input('email',array('label'=>false,'div'=>false,'placeholder'=>'Email Address','class'=>'chkemail'));?></p>
                <p>    <?php  echo $this->Form->input('username',array('label'=>false,'div'=>false,'placeholder'=>'Username'));?></p>
                <p>    <?php  echo $this->Form->input('password',array('id'=>'password','label'=>false,'div'=>false,'type'=>'password','placeholder'=>'Password','class'=>'password'));?></p>
                <p>    <?php  echo $this->Form->input('cpassword',array('label'=>false,'div'=>false,'type'=>'password','placeholder'=>'Confirm Password','class'=>'password'));?></p>
                <p>
                    <img class="captcha-form" id="captcha" src="<?php echo $this->Html->url('/Pages/captcha_image');?>" alt="Captcha" title="Refresh Captcha" />             
                    <a  class="loading-captcha"  href="javascript:void(0);" onclick='javascript:document.images.captcha.src = "<?php echo $this->Html->url("/Pages/captcha_image");?>?" + Math.round(Math.random(0) * 1000) + 1' >(Reload)</a>
                    <?php echo $this->Form->input('captcha',array('label'=>false,'div'=>false,'placeholder'=>'Confirm Captcha'));?>
                </p>
                <div class="hirework erorradio">
                    <?php //echo $this->Form->input('user_group_id',array('before'=>'<span class="hire">','seperator'=>'</span><span>','after'=>'</span>','div'=>false,'legend'=>false,'type'=>'radio','options'=>array('4'=>'Hire','5'=>'Work')))?>
                    <?php echo $this->Form->input('user_group_id',array('before'=>'<span class="hire">','separator'=> '</span><span>','after'=>'</span>','label'=>false,'div'=>false,'legend'=>false,'type'=>'radio','options'=>array('4'=>' Hire','5'=>' Work')))?>


                    <!--                
<span class="hire"><input type="radio"> Hire</span> <span><input type="radio"> Work</span>-->
                </div>
                    <?php echo $this->Form->submit('Create Account',array('class'=>'Reset-btn btn'));?>
                <p class="logcheck termpolicy">By registering you confirm that you accept the <a href="#">Terms  and Conditions</a> and <a href="#">Privacy Policy</a></p>
            </div>
            <div class="modal-footer text-center signupfoot">
                Already a BoostNext.com member? <a class="log-nv" href="#">Log In </a>
            </div>
            <?php echo $this->Form->end(); ?>
            </form>
        </div>
    </div>
</div>