$ ->

  Gamma.init
    viewport : [
      { width : 1200, columns : 5 },
      { width : 900,  columns : 5 },
      { width : 500,  columns : 5 },
      { width : 320,  columns : 5 },
      { width : 0,    columns : 5 }
    ]

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