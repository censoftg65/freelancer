<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Boost Next</title>
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <!-- Bootstrap -->
        <?php 
        echo $this->Html->css(array('bootstrap.min','style','responsive','font-awesome.min','global','dev'));
        echo $this->Html->script(array('jquery.min','boostnext','jquery.validate.min'));
        ?>
        <script language="javascript">
            var urlForJs = "<?php echo SITE_URL ?>";
        </script>
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="home">
        <div id="left-flyout-nav" class="layout-left-flyout visible-sm"></div>
        <div class="layout-right-content">

            <?php 
//            echo $this->Html->getCrumbs(' > ', array(
//                'text' => 'Home',
//                'url' => array('controller' => 'pages', 'action' => 'display', 'home'),
//                'escape' => false
//            ));
            echo $this->element('header'); 
            echo $this->Session->flash();
            echo $this->fetch('content');
            echo $this->element('footer');
            ?>
        </div>
        <?php
        echo $this->Html->script(array('jquery.cbFlyout','main','bootstrap.min','custom-form-elements'));
        ?>
    </body>
</html>
<?php echo $this->element('sql_dump'); ?>