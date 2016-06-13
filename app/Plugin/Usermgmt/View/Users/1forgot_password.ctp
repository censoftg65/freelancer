<?php ?>
<div class="hide-login">
    <div class="landtop set-main">
                    <?php echo $this->Html->image('/img/closebtn.png',array('class'=>'closebtn','alt'=>'Boostnext','title'=>'Boostnext'));?>
        <div id="login" class="login text-center">

            <div class="pinhp-form-inner">
                <div id="login-form-div" >
                    <button onclick="javascript:login_popup('fb');return false;" class="btn-facebook gaf-fb-connected-button btn btn-large" data-track_click="true"
                            data-action="login-facebook" type="button"> 
                        <i class="fa fa-facebook"></i> 
                        <span>Login with Facebook</span> 
                    </button>
                    <div class="hr">
                        <div class="inner">or</div>
                    </div>
                    <div id="failmessage">

                    </div>
                    <?php 
                    echo $this->Form->create('User',array('url'=>'/login','class'=>'login-form pinhp-form','id'=>'login-form'));
                    ?>
                    <p>
                        <span aria-hidden="true" class="glyphicon glyphicon-user"></span>
                        <?php echo $this->Form->input('email',array('type'=>'text','id'=>'uname','div'=>false,'label'=>false,'placeholder'=>'Username or Email'));?>
                    </p>
                    <p>
                        <span aria-hidden="true" class="glyphicon glyphicon-lock"></span>
                        <?php echo $this->Form->input('password',array('id'=>'chkpass','div'=>false,'label'=>false,'class'=>'password','placeholder'=>'Password'));?>
                    </p>
                    <p class="logcheck">
                        <input type="checkbox"> Remember me</p>
                    <p class="logcheck">
                        <?php 
                        echo $this->Form->submit('Login',array('id'=>'loginSubmitBtns','label'=>false,'div'=>false,'class'=>'submit-log'));
                        echo $this->Html->link(__('Forgot password?'),'/forgotPassword',array('class'=>'forgot'));
                        ?>
                    </p>
                    <?php 
                    echo $this->Form->end();
                    ?>
                    <div class="hr"> </div>
                    <p>Don&#039;t have an account? 
                        <a data-section-toggle="signup" href="#" class="signup-nv">Sign up now!</a>
                    </p>
                </div>
            </div>
        </div>
    </div> 
</div>
<div class="content">
    <div class="container" style="min-height: 437px;">
        <div class="row">
            <div class="">
                <div class="landtop set-main">
                    <div id="forgot_login" class="login text-center">
                        <div class="pinhp-form-inner">
                            <div id="forgot-form-div" >
                                <a class="facebook btn-facebook gaf-fb-connected-button btn btn-large" href="javascript:void(0)"><i class="fa fa-facebook"></i> <span>Login with Facebook</span></a>
                                <div class="hr">
                                    <div class="inner">or</div>
                                </div>
                                <label class="message_popup_form "></label> 
                                <?php echo $this->Form->create('User',array('id'=>'forgotpass'));  ?>
                                <div class="form-group form-group-lg">
                                    <div class="col-xs-12">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                           <?php echo $this->Form->input('email', array('class'=>'form-control','type'=>'email', 'label'=>false, 'div'=>false,'placeholder'=>'Registered Email ID')); ?>
                                        </div>
                                        <small class="help-block" style="display: none;"></small>
                                    </div>
                                </div>
                                <div class="form-group form-group-lg"> 
                                    <div class="col-xs-12">     
                                        <?php echo $this->Form->submit('Submit',array('class'=>'btn submit-log'));?>
                                    </div>
                                </div>
                                <?php echo $this->Form->end(); ?>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </div>
    <div style="clear:both;"></div>
</div>
<script>
    $(document).ready(function () {
        $('#forgotpass').validate({
            rules: {
                'data[User][email]': {
                    required: true,
                    email: true,
                    remote: {
                        type: 'POST',
                        url: '<?php echo $this->Html->url(array('controller'=>'Users','action'=>'checkusername','plugin'=>'usermgmt'));?>',
                        chkuae: function ()
                        {
                            return $('#forgotpass :input[name="data[User][email]"]').val();
                        }
                    }
                }
            },
            messages: {
                'data[User][email]': {
                    required: 'Please input email address',
                    email: 'Please input a valid email address',
                    remote: 'Please input a valid email address',
                }
            },
        });
    });
</script>