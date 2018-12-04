$(document).on 'turbolinks:load', ->
  modal = document.getElementById('modal-wrapper')
  # Get the button that opens the modal
  btn = document.getElementById('modal_btt')
  # Get the <span> element that closes the modal
  span = document.getElementById('modal_close_btt')
  # When the user clicks the button, open the modal
  overlay = document.getElementById("login_overlay");

  if (btn != null)
    btn.onclick = ->
      modal.style.display = 'block'
      overlay.style.display = 'block'
      return

  # When the user clicks on <span> (x), close the modal

  if (span != null)
    span.onclick = ->
      modal.style.display = 'none'
      overlay.style.display = 'none'
      return

  # When the user clicks anywhere outside of the modal, close it
  window.onclick = (event) ->
    if event.target == modal
      modal.style.display = 'none'
      overlay.style.display = 'none'
    return


  $('.tab a').on 'click', (e) ->
    e.preventDefault()
    $(this).parent().addClass 'active'
    $(this).parent().siblings().removeClass 'active'
    target = $(this).attr('href')
    $('.tab-content > div').not(target).hide()
    $(target).fadeIn 600
    return

  return