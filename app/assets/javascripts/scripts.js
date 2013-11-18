$(document).ready(function() {

  $("ul#ticker01").liScroll({travelocity: 0.05}); 
  $('.li-delete').each(function() {
    btn_delete = $(this).parents('.admin-controls').next();
    btn_delete.appendTo($(this));
  })

  $('.active-list li:eq(0)').addClass('active-list-item');
  $('.active-list li a').click(function() {
    $('.active-list li').removeClass('active-list-item');
    $(this).parent().addClass('active-list-item');
  });


});
