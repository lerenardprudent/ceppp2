$(document).ready(function() {
  $('form .buttons .button:not(.primary)').remove();
  $('.sidebar').hide();
  $.cookie('sidebartoggle', 'collapsed');
  $('#buttontoggle').removeClass('button-toggle-expanded');
  $('#buttontoggle').addClass('button-toggle-collapsed');
  setTimeout(function() {
    $('#buttontoggle').remove();
    $('.quickcreatetop').remove();
  }, 0);
  $('#bootstrap-container').removeClass('col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 col-sm-3 col-md-2 sidebar');
  $('footer').removeClass('expandedSidebar');
  $('footer').addClass('collapsedSidebar');
  $('#bootstrap-container').removeClass('expandedSidebar');
  $('#bootstrap-container').addClass('collapsedSidebar');
});