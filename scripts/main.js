(function() {
  var missionAnmialeApp;

  missionAnmialeApp = angular.module('missionAnmialeApp', []);

  missionAnmialeApp.controller('HeaderCtrl', [
    '$scope', function($scope) {
      return $(document).ready(function() {
        var header;
        header = $(".navbar-default");
        $(window).scroll(function() {
          var x, y;
          y = $(this).scrollTop();
          x = $("#page-2").offset().top;
          if (y >= x) {
            header.removeClass('white').addClass('black');
            return false;
          } else {
            header.removeClass('black').addClass('white');
            return false;
          }
          $(target).addClassName('.current');
          return false;
        });
        return $('a[href^="#"]').click(function() {
          var target, width;
          target = $(this).attr('href');
          width = $(target).offset().top;
          console.log(target);
          $('html, body').animate({
            scrollTop: width
          }, 500);
          $(target).addClassName('.current');
          return false;
        });
      });
    }
  ]);

}).call(this);

//# sourceMappingURL=main.js.map
