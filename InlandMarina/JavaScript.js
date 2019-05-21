// Navbar
$(document).ready(function () {
    $(".menu-icon").on("click", function () {
        $("nav ul").toggleClass("showing");
    });
});
// Scrolling Effect
$(window).on("scroll", function () {
    if ($(window).scrollTop()) {
        $('nav').addClass('black');
    }

    else {
        $('nav').removeClass('black');
    }
})
//Navbar End

//Signup Modal
$(document).ready(function () {
    $('.modal-connect .button-login').click(function (e) {
        e.preventDefault();
        $('.modal-connect').hide();
        $('.modal-footer').hide();
        $('.modal-login').show();
    });

    $(".modal-login .btn-dark").click(function (e) {
        e.preventDefault();
        $('.modal-connect').show();
        $('.modal-login').hide();
        $('.modal-footer').show();

    });


    $('.modal-connect .button-register').click(function (e) {
        e.preventDefault();
        $('.modal-connect').hide();
        $('.modal-footer').hide();
        $('.modal-register').show();
    });

    $(".modal-register .btn-dark").click(function (e) {
        e.preventDefault();
        $('.modal-connect').show();
        $('.modal-register').hide();
        $('.modal-footer').show();

    });
    $('.modal-login .login, .modal-register .submit').on('click', function (e) {
        e.preventDefault();
    });
});
//Signup Modal End