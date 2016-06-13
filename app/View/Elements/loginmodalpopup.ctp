<?php ?>
<div id="loginModal" class="modal fade" role="dialog">
    <div class="modal-dialog signforgot">
        <!-- Modal content-->
        <div class="modal-content text-center">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <?php echo $this->Html->image('pop-logo.jpg',array('width'=>'251','height'=>'65'));?>
            </div>
            <?php 
                echo $this->Form->create('User',array('url'=>'/login','class'=>'popupSign','id'=>'login-form'));
            ?>
            <div class="modal-body">      
                <button type="button" data-action="login-facebook" data-category="pinterest_button" data-track_click="true" class="btn-facebook gaf-fb-connected-button btn btn-large"> <i class="fa fa-facebook"></i> <span>Login with Facebook</span> </button>
                <div class="hr">
                    <div class="inner">OR</div>
                </div>
                <div id="failmessage"></div>
                <p>
                    <?php echo $this->Form->input('email',array('type'=>'text','id'=>'uname','div'=>false,'label'=>false,'placeholder'=>'Username or Email'));?> 
                </p>
                <p>
                   <?php 
                        echo $this->Form->input('password',array('id'=>'chkpass','div'=>false,'label'=>false,'placeholder'=>'Password'));
                    ?>
                </p>
                    <?php echo $this->Form->Submit('Log In',array('id'=>'loginSubmitBtns','class'=>'Reset-btn btn'));?>
                <p class="logcheck">
                    <?php echo $this->Form->input('remember', array('type'=>'checkbox', 'label'=>false, 'div'=>false)); ?>Remember me
                    <a class="forgot forgotrgt" href="#">Forgot password?</a>
                </p>
            </div>
            <div class="modal-footer text-center">
                Don't have an account? <a class="signup-nv" href="#">Sign up!</a>
            </div>
            <?php echo $this->Form->end(); ?>
        </div>

    </div>
</div>
<script>
    $(document).ready(function () {
        $('.log-nv').click(function () {
            $('.modal').modal('hide');
            $('#loginModal').modal('show');
            $('.modal-backdrop').css('z-index', '0');
        });
        $('.forgot').click(function () {
            $('.modal').modal('hide');
            $('#forgotmodal').modal('show');
            $('.modal-backdrop').css('z-index', '0');
        });
        $('.signup-nv').click(function () {
            $('.modal').modal('hide');
            $('#signupmodal').modal('show');
            $('.modal-backdrop').css('z-index', '0');
        });
        $('.singup').click(function () {
            $('.modal').modal('hide');
            $('#signupmodal').modal('show');
            $('.modal-backdrop').css('z-index', '0');
        });
    });
</script>
