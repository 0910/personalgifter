ready = ->
  toggleGifter = ->
    $('.gifter select').val('')
    if $('.gifter').hasClass('show')
      # Do things on Nav Close
      $('.gifter').removeClass 'show'
    else
      # Do things on Nav Open
      $('.gifter').addClass 'show'
    return
  
  $(window).on 'scroll', ->
    if $(this).scrollTop() > 100
      $('.navbar').addClass 'lavander'
    else
      $('.navbar').removeClass 'lavander'
    return

  $ ->

    # Toggle Nav on Click
    $('.toggle-gifter').click (event) ->
      # Calling a function in case you want to expand upon this.
      event.preventDefault()
      toggleGifter()
      return
    return
$(document).ready(ready);
$(document).on('page:load', ready);