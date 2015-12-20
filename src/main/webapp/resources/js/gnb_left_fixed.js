$(function () {
  var msie6 = $.browser == 'msie' && $.browser.version < 7;
  if (!msie6) {
    var top = $('#gnb_left').offset().top - parseFloat($('#gnb_left').css('margin-top').replace(/auto/, 0));
    $(window).scroll(function (event) {
      // what the y position of the scroll is
      var y = $(this).scrollTop();

      // whether that's below the form
      if (y >= top) {
        // if so, ad the fixed class
        $('#gnb_left').addClass('fixed');
      } else {
        // otherwise remove it
        $('#gnb_left').removeClass('fixed');
      }
    });
  }
});