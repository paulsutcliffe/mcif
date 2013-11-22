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


  $(document).on('click', '#servicio .top-nav a', function() {
    setTimeout(function() {    
      leer_nombre();
    }, 1000)

  });
  
  function leer_nombre() {
  
    nombre = $('.ajax-title').text();
    sidebar_links = $('.sidebar a');
    console.log(nombre );
    
    sidebar_links.each(function() {
       
      if ($(this).text() == nombre) {
        console.log($(this).text() + ' ' + nombre)
      
        $('.sidebar li').removeClass('active-list-item');
        $(this).parents('li').addClass('active-list-item');
        $(this).parents('li').css('background', 'transparent');
      }
    });
    
  }


