ready = ->
  
  toggleAbout = ->
    if $('.about').hasClass('show')
      # Do things on Nav Close
      $('.about').removeClass 'show'
      $('body').css('overflow', 'auto')
    else
      # Do things on Nav Open
      $('.about').addClass 'show'
      $(window).scrollTop(0)
      $('body').css('overflow', 'hidden')
    return

  toggleGifter = ->
    $('.gifter select').val('')
    if $('.gifter').hasClass('show')
      # Do things on Nav Close
      $('.gifter').removeClass 'show'
      $('body').css('overflow', 'auto')
    else
      # Do things on Nav Open
      $('.gifter').addClass 'show'
      $(window).scrollTop(0)
      $('body').css('overflow', 'hidden')
    return

  

  $('.dropdown-toggle').dropdown()
  
  $(window).on 'scroll', ->
    if $(this).scrollTop() > 100
      $('.navbar').addClass 'lavander'
    else
      $('.navbar').removeClass 'lavander'
    return

  $ ->

    $('.toggle-about').click (event) ->
      # Calling a function in case you want to expand upon this.
      event.preventDefault()
      toggleAbout()
      return
      
    # Toggle Nav on Click
    $('.toggle-gifter').click (event) ->
      # Calling a function in case you want to expand upon this.
      event.preventDefault()
      toggleGifter()
      return
    return

    

$(document).ready(ready);
$(document).on('page:load', ready);