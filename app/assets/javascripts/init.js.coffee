$ ->

  $('#dialogs').on('click', 'a', (e) ->
    $link = $(e.target)
    title = $link.find('.title').html()

    ga('send',
      hitType       : 'event'
      eventCategory : 'button'
      eventAction   : 'click'
      eventLabel    : title
      eventValue    : 4
    )
  )