console.log("HOLA BOLA");
$('form .buttons .button:not(.primary)').remove();
$('.sidebar').hide();
$.cookie('sidebartoggle', 'collapsed');
$('#buttontoggle').removeClass('button-toggle-expanded');
$('#buttontoggle').addClass('button-toggle-collapsed');
$('#buttontoggle').remove();
$('#bootstrap-container').removeClass('col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 col-sm-3 col-md-2 sidebar');
$('footer').removeClass('expandedSidebar');
$('footer').addClass('collapsedSidebar');
$('#bootstrap-container').removeClass('expandedSidebar');
$('#bootstrap-container').addClass('collapsedSidebar');
$('#quickcreatetop').remove();