$(document).ready(function() {
  checkIfMustBlock();
});

function consent_change(event) {
  $target = $(event.target);
  console.log("Consent change for ", $target.prop('id'));
  checkIfMustBlock($target);
}

function checkIfMustBlock($target) {
  var consentVals = $('div[type="BlockingRadioenum"]').map(function() {
    var field = $(this).attr('field');
    var selector = '[name="' + field + '"]';
    if ( $(this).find('input:radio').length ) {
      selector += ':checked';
    }
    $inp = $(this).find(selector);
    var consent = true;
    if ( $inp.length == 1 ) {
      var value = $inp.attr('value');
      consent = value != "0" && value != "non";
    }
    return consent;
  }).get();
  var mustBlock = consentVals.filter(function(x) { return !x; }).length > 0;
  console.log("Checking block status...", consentVals, mustBlock ? "YES" : "NO");
  
  if ( typeof($target) !== "undefined" ) {
    $consentPanel = $target.closest('.panel');
  } else {
    $consentPanel = $('.blocking-radioenum:first').closest('.panel');
  }
  
  setPanels(mustBlock, $consentPanel);
}

function setPanels(block, $consentPanel) {
  title = $('[blockedlabel]:first').attr('blockedlabel');
  $('.panel').each(function() {
    $ph = $(this).find('.panel-heading');
    $pb = $ph.next();
    $a = $ph.find('a');
    if ( $(this).is($consentPanel) ) {
      if ( $a.is('.collapsed') ) {
        $pb.addClass('in');
        $a.addClass('in');
        $a.removeClass('collapsed');
      }
    } else {
      if ( block ) {
        if ( !$ph.hasClass('blocked') ) {
          $ph.append($('<div class="temp-label">').append($a.text()));
          $ph.addClass('blocked');
          $pb.removeClass('in');
          $a.removeClass('in');
          $a.addClass('collapsed');
          $ph.attr('title', title);
        }
      } else { 
        $ph.removeClass('blocked');
        $ph.find(".temp-label").remove();
        $ph.attr('title', "");
      }
    }
  });
}

function preventPanelExpansion(e) {
  e.preventDefault();
  console.log("Preventing expansion of this panel due to consent withdrawal");
  return false;
}