$(document).ready(function() {
    $('#search_responsive').click(function() {
        $("#search_responsive").css("display", "none");
        $(".boton, .logo_mobile").css("display", "none");
        $(".close_search").css("display", "flex");
        $("#div_buscador").css("display", "flex").animate({
            opacity: 1,
            left: 0
        }, 200).addClass("slide-from-right");
    });
    $('.close_search').click(function() {
        $("#search_responsive").css("display", "inline");
        $(".boton, .logo_mobile").fadeIn(200);
        $(".close_search").fadeOut(200);
        $("#div_buscador").animate({
            opacity: 0,
            left: '-100%'
        }, 0, function() {
            $(this).css("display", "none").removeClass("slide-from-right");
        });
    });
});