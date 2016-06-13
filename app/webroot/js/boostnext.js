$(document).ready(function () {
    $('.hide-login').hide();
    $(".log-nv").click(function () {
        $(".hide-login").slideDown(350);
    });

    $('.hide-signup').hide();
    $(".signup-nv").click(function () {
        $(".hide-signup").slideDown(350);
    });

    $(".hide-login .closebtn").click(function () {
        $(".hide-login").slideUp(350);
        $('.banner-section').show();
    });

    $(".hide-signup .closebtn").click(function () {
        $(".hide-signup").slideUp(350);
        $('.banner-section').show();
    });


    $(".signup-nv").click(function () {

        // $(".hide-login").hide(180);
        $(".hide-login, .hide-hirework, .hide-hireLand").css("display", "none");
        $('.banner-section').hide();

    });

    $(".log-nv").click(function () {

        //  $(".hide-signup").hide(180);
        $(".hide-signup, .hide-hirework, .hide-hireLand").css("display", "none");
        $('.banner-section').hide();
    });
    $('.hide-hireLand').hide();
    $(".hire-btn").click(function () {
        // $(".hide-login").css("display", "none");
        $('.banner-section').hide();
        $(".hide-hireLand").slideDown(350);

    });
    $(".hide-hireLand .closebtn").click(function () {
        $(".hide-hireLand").slideUp(350);
        $('.banner-section').show();
    });

    $('.hide-hirework').hide();
    $(".work-btn").click(function () {
        // $(".hide-login").css("display", "none");
        $('.banner-section').hide();
        $(".hide-hirework").slideDown(350);

    });
    $(".hide-hirework .closebtn").click(function () {
        $(".hide-hirework").slideUp(350);
        $('.banner-section').show();
    });
    $(".look-hire").click(function () {
        $(".hide-hirework").slideDown(350);
        $('.hide-hireLand').hide();
    });
    $(".look-work").click(function () {
        $(".hide-hireLand").slideDown(350);
        $('.hide-hirework').hide();
    });

        if (!$.isFunction($.fn.validate)) {
            return;
        }
        $.validator.setDefaults({
            highlight: function (element) {
                $(element).closest('.form-group').addClass('has-error');
            },
            unhighlight: function (element) {
                $(element).closest('.form-group').removeClass('has-error');
            },
            errorElement: 'span',
            errorClass: 'help-block',
            errorPlacement: function (error, element) {
                if (element.parent('.input-group').length) {
                    error.insertAfter(element.parent());
                } else if (element.parent('label').length) {
                    error.insertAfter(element.parent());
                } else {
                    error.insertAfter(element);
                }
            }
        });
        $('.form-validate').each(function () {

            var validator = $(this).validate();

            $(this).data('validator', validator);

        });
});