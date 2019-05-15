$(document).ready(function() {
  checkIfMustBlock();
});

function consent_change(event) {
  $target = $(event.target);
  console.log("Consent change for ", $target.prop('id'));
  var mustBlock = checkIfMustBlock($target);
  if ( mustBlock ) {
    var warningMsg = SUGAR.language.translate('app_strings', 'LBL_CONSENT_WITHDRAWN_WARNING') + ".";
    if ( warningMsg.length ) {
      alert(warningMsg);
    }
  }
}

function checkIfMustBlock($target) {
  var mustBlock = false;
  if ( !$('.detail-view').length ) {
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
    mustBlock = consentVals.filter(function(x) { return !x; }).length > 0;
    console.log("Checking block status...", consentVals, mustBlock ? "YES" : "NO");
  }
  
  $consentPanel = typeof $target !== "undefined" ? $target.closest('.panel') : $('.blocking-radioenum:first').closest('.panel');
  $identPanel = $('.panel:first')
  $panelsToIgnore = $.merge($consentPanel, $identPanel)
  setPanels(mustBlock, $panelsToIgnore);
  return mustBlock;
}

function setPanels(block, $panelsToIgnore) {
  title = $('[blockedlabel]:first').attr('blockedlabel');
  $('.panel').each(function() {
    $ph = $(this).find('.panel-heading');
    $pb = $ph.next();
    $a = $ph.find('a');
    if ( $panelsToIgnore.index($(this)) >= 0 ) {
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