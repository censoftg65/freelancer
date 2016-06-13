<header class="container-fluid header-section the-header simpleHead">
    <div class="container">
        <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 logo home-logo">
            <a href='<?=SITE_URL ?>' title="BoostNext">
                <?php  echo $this->Html->image('/img/logo.jpg',array('alt'=>'Boostnext','title'=>'Boostnext'));?>
            </a>
        </div>
        <div class="head-main home-header">
            <div class="col-lg-8 col-md-8 col-sm-6 col-xs-5 mobile">
                <div class="navbar navbar1">
                    <!-- Trigger -->
                    <a class="btn-navbar btn-navbar-navtoggle btn-flyout-trigger" href="#">
                        <span class="icon-bar btn-flyout-trigger"></span>
                        <span class="icon-bar btn-flyout-trigger"></span>
                        <span class="icon-bar btn-flyout-trigger"></span>
                    </a>
                    <!-- Structure -->
                    <?php  if($this->UserAuth->isLogged()) { ?>
                    <nav class="the-nav nav-collapse clearfix">
                        <ul class="nav nav-pill">
                            <li ><a href="#">Hire Expert Gamers</a> </li>
                            <li> <a href="#">Work</a></li>
                            <li> <a href="#">My Account</a></li>  
                            <li> <a href="#">About</a></li> 
                            <li> <a href="#">Help</a></li> 
                            <li><?php echo $this->Html->link(__('Sign Out'),array('controller'=>'Users', 'action'=>'logout', 'plugin'=>'usermgmt'));?></li>
                        </ul>
                    </nav>
                    <?php } ?>

                </div>
            </div>
            <div class="col-lg-8 col-md-7 col-sm-5 col-xs-12 desktop nav-section">
                <?php  if($this->UserAuth->isLogged()) { ?>
                <ul>
                    <li><a href="#">Hire Expert Gamers</a> </li>
                    <li> <a href="#">Work</a></li>
                    <li> <a href="#">My Account</a></li>  
                    <li> <a href="#">About</a></li> 
                    <li> <a href="#">Help</a></li> 
                    <li><?php echo $this->Html->link(__('Sign Out'),array('controller'=>'Users', 'action'=>'logout', 'plugin'=>'usermgmt'));?></li>
                </ul>
            <?php } ?>
            </div>
            <?php  if(!$this->UserAuth->isLogged()) { ?>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-7 nav-section">
                <div class="pull-right loginmenu">    
                    <ul>

                        <li class="log-nv"><a href="#">LOGIN</a> </li>
                        <li class="signup-nv"> <a href="#">SIGN UP</a></li>  
                        <li> <a  class="btn btn-warning" href="#">Post a Job</a></li> 

                    </ul>
                </div>
            </div>
            <?php }else{?>
            <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 my-profile-section">
                <ul>
                    <li>AUD $000</li>
                    <li><a href="#">
                        <?php echo $this->Html->image('comment.png');?>
                        </a></li>
                    <li><a href="#" class="notofication">
                            <?php echo $this->Html->image('notification.png');?>
                            <span class="notification-count">
                                <?php echo $this->Html->image('notification-count.png');?>
                            </span></a></li>
                    <li>
                        <a href="#">
                                    <?php echo $this->Html->image('wifi.png');?>
                        </a>
                    </li>
                </ul>
            </div>
               <?php } ?>
            <div class="clearfix"></div>
        </div>
    </div>
</header>
<?php  
    if($this->action != 'display' && !$this->UserAuth->isLogged()) {
        echo $this->element('loginmodalpopup');
        echo $this->element('sigupmodalpopup');
    }
    if(($this->action != 'forgotPassword') && !$this->UserAuth->isLogged()) {
        echo $this->element('forgot-modal-popup');
    }
?>