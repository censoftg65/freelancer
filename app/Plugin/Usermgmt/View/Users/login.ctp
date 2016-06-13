 <div class="row">
	<div class="um-panel span6 offset3">
		<div class="um-panel-header">
			<span class="um-panel-title">
				<?php
					echo __('Sign In');
					if(SITE_REGISTRATION) {
						echo ' '.__('or');
					}?>
			</span>
			<?php if(SITE_REGISTRATION) { ?>
			<span class="um-panel-title">
				<?php echo $this->Html->link(__('Sign Up', true), '/register');?>
			</span>
			<?php } ?>
		</div>
		<div class="um-panel-content">
			<?php echo $this->element('Usermgmt.ajax_validation', array('formId' => 'loginForm', 'submitButtonId' => 'loginSubmitBtn')); ?>
			<?php echo $this->Form->create('User', array('id'=>'loginForm', 'class'=>'form-horizontal')); ?>
			<div class="um-form-row control-group">
				<label class="control-label required"><?php echo __('Email / Username');?></label>
				<div class="controls">
					<?php echo $this->Form->input('email', array('type'=>'text', 'label'=>false, 'div'=>false, 'placeholder'=>__('Email / Username'))); ?>
				</div>
			</div>
			<div class="um-form-row control-group">
				<label class="control-label required"><?php echo __('Password');?></label>
				<div class="controls">
					<?php echo $this->Form->input('password', array('type'=>'password', 'label'=>false, 'div'=>false, 'placeholder'=>__('Password'))); ?>
				</div>
			</div>
			<?php if(USE_REMEMBER_ME) { ?>
			<div class="um-form-row control-group">
			<?php   if(!isset($this->request->data['User']['remember'])) {
						$this->request->data['User']['remember']=true;
					} ?>
				<label class="control-label"><?php echo __('Remember me');?></label>
				<div class="controls">
					<?php echo $this->Form->input('remember', array('type'=>'checkbox', 'label'=>false, 'div'=>false)); ?>
				</div>
			</div>
			<?php } ?>
			<?php if($this->UserAuth->canUseRecaptha('login')) { ?>
			<div class="um-form-row control-group">
				<label class="control-label required"><?php echo __('Prove you\'re not a robot');?></label>
				<div class="controls">
					<?php echo $this->UserAuth->showCaptcha(isset($this->validationErrors['User']['captcha'][0]) ? $this->validationErrors['User']['captcha'][0] : ""); ?>
				</div>
			</div>
			<?php } ?>
			<div class="um-button-row">
				<?php echo $this->Form->Submit('Sign In', array('div'=>false, 'class'=>'btn btn-primary', 'id'=>'loginSubmitBtn')); ?>
				<?php echo $this->Html->link(__('Forgot Password?'), '/forgotPassword', array('class'=>'right btn')); ?>
				<?php echo $this->Html->link(__('Email Verification'), '/emailVerification', array('class'=>'right btn')); ?>
			</div>
			<?php echo $this->Form->end(); ?>
			<?php echo $this->element('Usermgmt.provider'); ?>
		</div>
	</div>
</div>