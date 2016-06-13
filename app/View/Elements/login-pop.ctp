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
                    <div class="login-home">
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
                        <?php echo $this->Form->input('remember', array('type'=>'checkbox', 'label'=>false, 'div'=>false)); ?>
                        Remember me
                    </p>
                    <p class="logcheck">
                        <?php 
                        echo $this->Form->submit('Login',array('id'=>'loginSubmitBtns','label'=>false,'div'=>false,'class'=>'submit-log'));
                        echo $this->Html->link(__('Forgot password?'),'/forgotPassword',array('class'=>'forgot'));
                        ?>
                    </p>
                    <?php 
                    echo $this->Form->end();
                    ?>
                    </div>
                    <div class="hr"> </div>
                    <p>Don&#039;t have an account? 
                        <a data-section-toggle="signup" href="#" class="signup-nv">Sign up now!</a>
                    </p>
                </div>
            </div>
        </div>
    </div> 
</div>
<?php //echo $this->element('Usermgmt.ajax_validation', array('formId' => 'login-form', 'submitButtonId' => 'loginSubmitBtns')); ?>


<?php
//$clas = 'alert alert-callout alert-danger alert-dismissable';
//$data = $this->Js->get('#login-form')->serializeForm(array('isForm' => true, 'inline' => true));
//        $this->Js->get('#login-form')->event('submit', $this->Js->request(
//                        array('action' => 'login', 'controller' => 'Users', 'plugin' => 'usermgmt'), array(
//                    'before' => 'if($("#login-form").valid() === false){return false;}',
//                    'success' =>"var obj = $.parseJSON(data);if(obj.error == 1){".'$("#failmessage").html("<div class ='."'$clas'".'>"+obj.data.User.email+"</div>")'."}else{}",
//                    'data' => $data,
//                    'async' => true,
//                    'dataExpression' => true,
//                    'method' => 'POST'
//                        )
//                )
//        );
//        echo $this->Js->writeBuffer();
?>