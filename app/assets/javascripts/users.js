$(document).on('turbolinks:load', function(){
  $(".user-destroy-btn").click(function(){
     $(".mypage").addClass("none");
     $(".user-destroy-form").removeClass("none");
      });
  $(".reject-btn").click(function(){
     $(".mypage").removeClass("none");
     $(".user-destroy-form").addClass("none");
      });  
  });
  
  