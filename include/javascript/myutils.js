function removeCreateModifyActionLinks() {
  removedLinks = false
  $('li.actionmenulinks > a[data-action-name="Add"], li.actionmenulinks > a[data-action-name="View"]').each(function() {
    let href = $(this).attr('href')
    $(`a[href="${href}"]`).parent().remove()
    removedLinks = true
  })
  if ( removedLinks ) {
    $('#buttontoggle.button-toggle-expanded').click()
    console.log("Removed create/view links")
  }
}