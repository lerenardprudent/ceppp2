$(document).ready(function() {
  console.log("Custom Commentaires recruteur Detail View javascript")
  setTimeout(function() {
    removedLinks = false
    $('li.actionmenulinks > a[data-action-name="Add"], li.actionmenulinks > a[data-action-name="View"]').each(function() {
      $(this).parent().remove()
      removedLinks = true
    })
    if ( removedLinks ) {
      console.log("Removed create/view links")
    }
  }, 500)
})