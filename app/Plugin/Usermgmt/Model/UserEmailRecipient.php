<?php
App::uses('UserMgmtAppModel', 'Usermgmt.Model');
class UserEmailRecipient extends UserMgmtAppModel {
	/**
	 * This model has following models
	 *
	 * @var array
	 */
	var $belongsTo = array('User');
}