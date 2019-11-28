var inactivityTimer = undefined
var inactivityDelayMins = 5
var inactivityEventNS = "inactivity"

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
  var userIsAdmin = $('[data-user-is-admin]').data('user-is-admin')
  if ( !userIsAdmin ) { // If not sysadmin
    let secDelay = setInactivityTimer()
    console.log(`*Automatic logout will occur after ${secDelay} milliseconds of inactivity`)
  }
});

function setInactivityTimer()
{ 
  if ( inactivityTimer !== undefined ) {
    $(document).unbind( `.${inactivityEventNS}`)
    clearTimeout(inactivityTimer)
  }

  let secDelay = inactivityDelayMins*60*1000
  setTimeout(function() {
    $(document)
      .on("keypress." + inactivityEventNS, setInactivityTimer)
      .on("mousemove." + inactivityEventNS, setInactivityTimer)
    inactivityTimer = setTimeout(inactivityTimerExpired, secDelay)
  }, 1000) // Little delay to collect event clusters
  return secDelay
}

function inactivityTimerExpired()
{
  console.log("Logging out now due to inactivity")
  setTimeout(function() { window.location.href = $('#logout_link').attr('href') }, 2000)
}