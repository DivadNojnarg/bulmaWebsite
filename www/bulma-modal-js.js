// click outside of the modal
// and it will be hidden
//$(document).click(function(event) {
//  if(!$(event.target).closest('.modal').length) {
//    if($('.modal').hasClass("is-active")) {
//      $('.modal').removeClass('is-active');
//    }
//  }
//});

$(".modal-close").click(function() {
   $(".modal").removeClass("is-active");
});

