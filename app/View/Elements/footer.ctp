<?php ?>
<footer class="container-fluid footer-section">
    <div class="container cont-cent cont-cent2">
        <div class="footer-top row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 social-icon">
                <ul>
                    <li class="facebook"><a href="#"><i class="fa icon-facebook fa-facebook"></i></a></li>
                    <li class="twitter"><a href="#"><i class="fa icon-twitter fa-twitter"></i></a></li>
                    <li class="google-plus"><a href="#"><i class="fa icon-google-plus fa-google-plus"></i></a></li>
                    <li class="youtube"><a href="#"><i class="fa fa-youtube icon-youtube"></i></a></li>
                </ul>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 footrgt">
                <div class="col-sm-2">
                    <h3>About</h3>
                    <ul>
                        <li>
                            <?php echo $this->Html->link(__('About Us'),array('controller'=>'Pages','action'=>'about'));?>
                        </li>
                        <li><a href="#">How it Works</a></li>
                        <li><a href="#">Report Bug</a></li>
                        <li><a href="#">Fees &amp; Charges</a></li>
                        <li><a href="#">Faq</a></li>
                    </ul>
                </div>
                <div class="col-sm-2">
                    <h3>Jobs</h3>
                    <ul>
                        <li><a href="#">League of Legends</a></li>
                        <li><a href="#">CS:GO</a></li>
                    </ul>
                </div>
                <div class="col-sm-3">
                    <h3>Expert Gamer</h3>
                    <ul>
                        <li><a href="#">League of Legends</a></li>
                        <li><a href="#">CS:GO</a></li>
                    </ul>
                </div>
                <div class="col-sm-2 pull-right">
                    <h3>Get in Touch</h3>
                    <ul>
                        <li><a href="#">Get Support</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <ul>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">Terms and Conditions</a></li>
                <li><a href="#">Copyright Infringement Policy</a></li>
                <li><a href="#">Code of Conduct</a></li>
            </ul>
            <p>Boost Next is a registered  Trademark of Boost Next Pty Ltd (ACN 192 182 348)</p>
            <p> Copyright 2016 Boost Next Pty LTD (ACN 192 182 348)</p>
        </div>
    </div>
</footer>
 <?php  if(!$this->UserAuth->isLogged()) { ?>
<script>
    function sendlink(id, clas) {
        $.ajax({
            url: '<?php echo $this->Html->url(array('plugin'=>false,'controller'=>'Pages','action'=>'sendlink'));?>/' + id,
            success: function (data) {
                var obj = $.parseJSON(data);
                if (obj.error == 0) {
                    $('.' + clas).html('<div class="alert alert-callout alert-success">We have resent the activation link. You may have to check your spam folder to find it.</div>');
                }
            }
        });
    }

    $(document).ready(function () {
        $('.loading-captcha').click(function () {
            $('#UserCaptcha').val('');
        });
        var emailregex = /\S+@\S+\.\S+/;
        jQuery.validator.addMethod('validemail', function (value, element) {
            return this.optional(element) || (value.match(emailregex));
        }, 'The input is not a valid email address');

        jQuery.validator.addClassRules('chkemail', {
            validemail: true
        });
        jQuery.validator.addMethod("noSpace", function (value, element) {
            return value.indexOf(" ") < 0 && value != "";
        }, "Spaces not allowed.");

        jQuery.validator.setDefaults({
            onkeyup: false,
            highlight: function (element) {
                $(element).css('border','1px solid red');
                $(element).closest('p').find('span.rmoves').remove();
                $(element).closest('p').removeClass('validcs');
                $(element).closest('p').addClass('has-error');
                $(element).closest('p').append(' <span class="glyphicon glyphicon-remove right-icon rmoves" aria-hidden="true"></span>');
            },
            unhighlight: function (element) {
                $(element).css('border','1px solid green');
                $(element).closest('p').removeClass('has-error');
                $(element).closest('p').addClass('validcs');
                $(element).closest('p').find('span.rmoves').remove();
                $(element).closest('p').append(' <span class="glyphicon glyphicon-ok right-icon rmoves" aria-hidden="true"></span>');
            },
            errorElement: 'span',
            errorClass: 'help-block',
            errorPlacement: function (error, element) {
                if (element.attr('type') === 'radio') {
                    error.insertAfter(".erorradio");
                } else if (element.parent('.input-group').length) {
                    error.insertAfter(element.parent());
                } else if (element.parent('label').length) {

                    error.insertAfter(element.parent());
                } else {

                    error.insertAfter(element);
                }

            },
        });

        $('#forgotpass1').validate({
            rules: {
                'data[User][email]': {
                    required: true,
                    email: true,
                    remote: {
                        type: 'POST',
                        url: '<?php echo $this->Html->url(array('controller'=>'Users','action'=>'checkusername','plugin'=>'usermgmt'));?>',
                        chkuae: function ()
                        {
                            return $('#forgotpass1 :input[name="data[User][email]"]').val();
                        }
                    }
                }
            },
            messages: {
                'data[User][email]': {
                    required: 'The input is not a valid email address',
                    email: 'The input is not a valid email address',
                    remote: 'Please input a registered valid email address',
                }
            },
        });
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
                    required: 'The input is not a valid email address',
                    email: 'The input is not a valid email address',
                    remote: 'Please input a registered valid email address',
                }
            },
        });
        $.validator.addMethod("loginRegex", function (value, element) {
            return this.optional(element) || /^[a-zA-Z0-9-_]+$/.test(value);
        }, "Username must contain only letters, numbers, or dashes.");
        $('#login-form').validate({
            rules: {
                'data[User][email]': {
                    required: true,
                    remote: {
                        type: 'POST',
                        url: '<?php echo $this->Html->url(array('controller'=>'Users','action'=>'checkusername','plugin'=>'usermgmt'));?>',
                        chkuae: function ()
                        {
                            return jQuery('#login-form :input[name="data[User][email]"]').val();
                        }
                    }
                },
                'data[User][password]': {
                    required: true,
                    noSpace: true,
                    remote: {
                        type: "POST",
                        url: '<?php echo $this->Html->url(array('controller'=>'Users','action'=>'checkpassword','plugin'=>'usermgmt'));?>',
                        data: {
                            'data[User][email]': function () {
                                return $("#uname").val();
                            }
                        }
                    }
                }
            },
            messages: {
                'data[User][email]': {
                    required: 'An email address or username is required.',
                    remote: 'The email address or username does not match any account.'
                },
                'data[User][password]': {
                    required: 'Please enter your password',
                    remote: "The password that you've entered is incorrect",
                },
            }
        });
        $('#signuppop').validate({
            rules: {
                'data[User][email]': {
                    required: true,
                    email: true,
                    remote: {
                        url: '<?php echo $this->Html->url(array('controller'=>'Users','action'=>'checkemail','plugin'=>'usermgmt'))?>',
                        type: 'POST',
                        chkem: function ()
                        {
                            return jQuery('#signuppop :input[name="data[User][email]"]').val();
                        }
                    }
                },
                'data[User][username]': {
                    required: true,
                    minlength: 5,
                    loginRegex: true,
                    remote: {
                        url: '<?php echo $this->Html->url(array('controller'=>'Users','action'=>'checkemail','plugin'=>'usermgmt'))?>',
                        type: 'POST',
                        chkun: function () {
                            return $('#signuppop :input[name="data[User][username]"]').val();
                        }
                    }
                },
                'data[User][password]': {
                    required: true,
                    minlength: 6,
                    noSpace: true,
                },
                'data[User][cpassword]': {
                    required: true,
                    minlength: 6,
                    noSpace: true,
                    equalTo: '#password',
                },
                'data[User][user_group_id]': {
                    required: true,
                },
                'data[User][captcha]': {
                    required: true,
                    remote: {
                        url: '<?php echo $this->Html->url(array('controller'=>'Pages','action'=>'checkcaptcha','plugin'=>false))?>',
                        type: 'POST',
                        chkun: function () {
                            return $('#signuppop :input[name="data[User][username]"]').val();
                        }
                    }
                },
            },
            messages: {
                'data[User][email]': {
                    required: 'The input is not a valid email address',
                    email: 'The input is not a valid email address',
                    remote: "This email address is already in use, please try another.",
                },
                'data[User][username]': {
                    required: 'Username is required',
                    minlength: 'Please enter username of 5 characters',
                    remote: "Username already in use",
                    alphanumeric: 'Please input alphanumeric characters only',
                },
                'data[User][password]': {
                    required: 'Please enter a password.',
                    minlength: 'Please enter password of minimum 6 characters',
                },
                'data[User][cpassword]': {
                    required: 'Please enter a password.',
                    minlength: 'Please enter password of minimum 6 characters',
                    equalTo: 'Please enter the same password as above.'
                },
                'data[User][user_group_id]': {
                    required: 'Please select a role.',
                },
                'data[User][captcha]': {
                    required: 'Please input captcha.',
                    remote: 'Captcha text does not match with image'
                },
            }
        });
        $("#loginSubmitBtns").click(function () {
            $.ajax({
                async: true,
                beforeSend: function (XMLHttpRequest) {
                    if ($("#login-form").valid() === false) {
                        return false;
                    }
                },
                data: $("#login-form").serialize(),
                type: "POST",
                url: '<?php echo $this->Html->url(array('controller'=>'Users','action'=>'login','plugin'=>'usermgmt'));?>',
                success: function (data, textStatus) {
                    var obj = $.parseJSON(data);
                    if (obj.error == 1) {
                        $('#failmessage').html('<div class="successmsg1"><div class="alert alert-callout alert-danger">' + obj.data.User.email + '</div>');
                        return false;
                    } else {
                        $('#login-form').submit();
                    }
                }
            });
            return false;
        });
    });
</script>
 <?php } ?>
