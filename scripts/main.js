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
            $('#logo').attr('src', 'img/logo-black-blue.png');
            header.removeClass('white').addClass('black');
            console.log(y);
            return false;
          } else {
            header.removeClass('black').addClass('white');
            $('#logo').attr('src', 'img/logo-black-white.png');
            return false;
          }
          $(target).addClassName('.current');
          return false;
        });
        $('a[href^="#"]').click(function() {
          var target, width;
          target = $(this).attr('href');
          width = $(target).offset().top;
          console.log(target);
          $('html, body').animate({
            scrollTop: width
          }, 750);
          $(target).addClassName('.current');
          return false;
        });
        $('.paragraphs').hide();
        $('.content-2-1').mouseenter((function() {
          $('.title-2-1').hide();
          return $('.paragraph-2-1').fadeIn();
        }));
        $('.content-2-1').mouseleave((function() {
          $('.paragraph-2-1').hide();
          return $('.title-2-1').fadeIn();
        }));
        $('.content-2-2').mouseenter((function() {
          $('.title-2-2').hide();
          return $('.paragraph-2-2').fadeIn();
        }));
        $('.content-2-2').mouseleave((function() {
          $('.paragraph-2-2').hide();
          return $('.title-2-2').fadeIn();
        }));
        $('.content-2-3').mouseenter((function() {
          $('.title-2-3').hide();
          return $('.paragraph-2-3').fadeIn();
        }));
        return $('.content-2-3').mouseleave((function() {
          $('.paragraph-2-3').hide();
          return $('.title-2-3').fadeIn();
        }));
      });
    }
  ]);

}).call(this);

//# sourceMappingURL=main.js.map
