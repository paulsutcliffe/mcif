$(document).ready(function() {

  $("ul#ticker01").liScroll({travelocity: 0.05}); 
  $('.li-delete').each(function() {
    btn_delete = $(this).parents('.admin-controls').next();
    btn_delete.appendTo($(this));
  })

});
