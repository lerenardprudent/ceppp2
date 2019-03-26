silentAjax = false;

$(document).ready(function() {
  console.log("GO SILVER SOVEREIGN", $('[id^=prob_sant]').length);
});

$(document).on({
    ajaxStart: function() { if ( !silentAjax ) {
      showAjaxSpinner();
    } },
    ajaxStop: function() { showAjaxSpinner(false) }
  });
  
  function showAjaxSpinner(show)
  {
    if ( undef(show) ) {
      show = true;
    }
    
    if ( show ) {
      $('#loading-ajax').show();
    } else {
      $('#loading-ajax').hide();
    }
  }