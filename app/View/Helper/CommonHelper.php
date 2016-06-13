<?php

App::uses('Helper', 'View');

class CommonHelper extends Helper {

    public $helpers = array('Session', 'Js');

    public function saveDataAjax($formid = null, $controler = null, $acton = null, $plugin = null) {
         $data = $this->Js->get('#' . $formid)->serializeForm(array('isForm' => true, 'inline' => true));
        $this->Js->get('#' . $formid)->event('submit', $this->Js->request(
                        array('action' => $acton, 'controller' => $controler, 'plugin' => $plugin), array(
                    'before' => 'if($("#' . $formid . '").valid() === false){return false;}$("body").addClass("faderclass");',
                    'complete' => ';',
                    'success' => ';',
                    'data' => $data,
                    'async' => true,
                    'dataExpression' => true,
                    'method' => 'POST'
                        )
                )
        );
        echo $this->Js->writeBuffer();
    }
}