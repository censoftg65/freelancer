<?php

/**
 * Static content controller.
 *
 * This file will render views from views/pages/
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
App::uses('AppController', 'Controller');

/**
 * Static content controller
 *
 * Override this controller by placing a copy in controllers directory of an application
 *
 * @package       app.Controller
 * @link http://book.cakephp.org/2.0/en/controllers/pages-controller.html
 * 
 */
class PagesController extends AppController {

    /**
     * This controller does not use a model
     *
     * @var array
     */
    public $uses = array();

    public function beforeFilter() {
        $this->Security->unlockedActions = array('checkcaptcha');
        parent::beforeFilter();
    }

    /**
     * Displays a view
     *
     */
    public function display() {
        if ($this->request->is('post')) {
            $this->loadModel('Usermgmt.User');
            $this->User->set($this->request->data);
            $UserRegisterValidate = $this->User->RegisterValidate();
            if ($UserRegisterValidate) {
                $this->request->data['User']['email_verified'] = 0;
                $this->request->data['User']['active'] = 1;
                if (isset($_SERVER['REMOTE_ADDR'])) {
                    $this->request->data['User']['ip_address'] = $_SERVER['REMOTE_ADDR'];
                }
                $salt = $this->UserAuth->makeSalt();
                $this->request->data['User']['salt'] = $salt;
                $this->request->data['User']['password'] = $this->UserAuth->makePassword($this->request->data['User']['password'], $salt);
                if ($this->User->save($this->request->data, false)) {
                    $userId = $this->User->getLastInsertID();
                    $user = $this->User->getUserById($userId);
                    $this->User->sendVerificationMail($user);
                    $this->Session->setFlash(__('<div class="alert alert-callout alert-success">Registration Successfull! Please check your email for activation link. You may have to check your spam folder to find it.</div></div><div class="activation-link"><a href ="#" onclick="sendlink(' . $userId . ',' . "'message'" . ')" >Resend activation link</a></div> '));
                    $this->redirect(array('controller' => 'Pages', 'action' => 'freesignup', 'plugin' => false));
                } else {
                    $this->Session->setFlash(__('Error while registration.Please try again later'), 'danger');
                }
            }
        }
    }

    /*
     * method to send email verification link to registered user
     */

    public function sendlink($id = null) {
        $this->autoRender = false;
        if ($this->request->is('ajax')) {
            $this->loadModel('Usermgmt.User');
            $user = $this->User->find('first', array('conditions' => array('User.id' => $id)));
            if ($user) {
                $this->User->sendVerificationMail($user);
                return json_encode(array('error' => 0));
            }
            return json_encode(array('error' => 1));
        } else {
            echo 'Ok';
        }
    }

    /*
     * static page
     */

    public function about() {
        
    }

    /*
     * method to check captcha
     */

    public function captcha_image() {
        $this->UserAuth->show_captcha();
    }

    /*
     * method will check captcha
     */

    public function checkcaptcha() {
        $this->autoRender = false;
        if ($this->request->is('ajax')) {
            if (isset($this->request->data['User']['captcha'])) {
                $sessioncap = $this->Session->read('captcha');
                $viewcap = $this->request->data['User']['captcha'];
                if ($sessioncap == $viewcap) {
                    echo 'true';
                } else {
                    echo 'false';
                }
                exit;
            }
        } else {
            echo 'false';
            exit;
        }
    }

    /*
     * success message
     */

    public function freesignup() {
        if (!$this->Session->check('Message.flash')) {
            $this->redirect('/');
        }
        if ($this->request->referer() == '/') {
            $this->redirect('/');
        }
        $this->layout = 'default';
        $userId = $this->UserAuth->getUserId();
        if ($userId) {
            $this->redirect('/dashboard');
        }
    }

}
