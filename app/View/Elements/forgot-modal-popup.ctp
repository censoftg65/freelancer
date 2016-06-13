<?php ?>
<div id="forgotmodal" class="modal fade" role="dialog">
    <div class="modal-dialog signforgot">
        <div class="modal-content text-center">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <?php echo $this->Html->image('pop-logo.jpg',array('width'=>'251','height'=>'65'));?>
            </div>
            <?php echo $this->Form->create('User',array('class'=>'popupSign','id'=>'forgotpass1'));?>
            <div class="modal-body">      
                <label>Reset your Password</label>
                <div id="erromsg">
                </div>
                <p><?php echo $this->Form->input('email',array('div'=>false,'label'=>false,'placeholder'=>'Enter your e-mail address'));?></p>
                <p><?php echo $this->Form->submit('Reset Password',array('class'=>"Reset-btn btn",'div'=>false,'label'=>false));?></p>
                <p class="text-right log-nv"><a href="#">Login?</a></p>
            </div>
            <div class="modal-footer text-center ">
                Don't have an account? <a class="signup-nv" href="#">Sign up!</a>
            </div>
            <?php echo $this->Form->end();?>
        </div>
    </div>
</div>
<?php
$formid = 'forgotpass1';
$data = $this->Js->get('#' . $formid)->serializeForm(array('isForm' => true, 'inline' => true));
        $this->Js->get('#' . $formid)->event('submit', $this->Js->request(
                        array('action' => 'forgotPassword', 'controller' => 'Users', 'plugin' => 'usermgmt'), array(
                    'before' => 'if($("#' . $formid . '").valid() === false){return false;}$("body").addClass("faderclass");',
                    'complete' => ';',
                    'success' => 'var obj = $.parseJSON(data);console.log(obj);$("#erromsg").html(obj.message)',
                    'data' => $data,
                    'async' => true,
                    'dataExpression' => true,
                    'method' => 'POST'
                        )
                )
        );
        echo $this->Js->writeBuffer();
?>