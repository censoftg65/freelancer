<?php ?>
<div class="landtop set-main">
    <div id="login" class="login text-center">
        <div class="pinhp-form-inner">
            <div id="login-form-div" >
                <button class="btn-facebook gaf-fb-connected-button btn btn-large" data-track_click="true" data-action="login-facebook" type="button"> 
                    <i class="fa fa-facebook"></i> 
                    <span>Login with Facebook</span> 
                </button>
                <div class="hr">
                    <div class="inner">or</div>
                </div>
                <div id="erromsg">

                </div>
                <?php 
                    echo $this->Session->flash(); 
                    echo $this->Form->create('User',array('class'=>'login-form pinhp-form','id'=>'forgotpass'));
                ?>
                <p>
                    <span aria-hidden="true" class="glyphicon glyphicon-envelope"></span>
                        <?php echo $this->Form->input('email',array('type'=>'text','id'=>'uname','div'=>false,'label'=>false,'placeholder'=>'Email'));?>
                </p>
                <div class="form-group form-group-lg"> 
                    <div class="col-xs-12">     
                        <?php echo $this->Form->submit('Submit',array('class'=>'btn submit-log'));?>
                    </div>
                </div>
                    <?php 
                    echo $this->Form->end();
                    ?>
            </div>
        </div>
    </div>
</div>
<?php
$formid = 'forgotpass';
$data = $this->Js->get('#' . $formid)->serializeForm(array('isForm' => true, 'inline' => true));
        $this->Js->get('#' . $formid)->event('submit', $this->Js->request(
                        array('action' => 'forgotPassword', 'controller' => 'Users', 'plugin' => 'usermgmt'), array(
                    'before' => 'if($("#' . $formid . '").valid() === false){return false;}',
                    'complete' => ';',
                    'success' => 'var obj = $.parseJSON(data);$("#erromsg").html(obj.message)',
                    'data' => $data,
                    'async' => true,
                    'dataExpression' => true,
                    'method' => 'POST'
                        )
                )
        );
        echo $this->Js->writeBuffer();
?>