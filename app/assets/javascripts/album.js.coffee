$ ->
  default_options =
    mainClass    : 'mfp-fade'
    html         : true
    animation    : true
    placement    : 'right'
    trigger      : 'manual'
    delegate     : 'a'
    type         : 'image'
    tClose       : 'Fechar'
    tLoading     : 'Carregando...'
    removalDelay : 300
    image        : { tError: 'Erro' }
    ajax         : { tError: 'Erro' }
    gallery      : {
      enabled  : true
      preload  : [0, 2]
      tPrev    : 'Anterior'
      tNext    : 'Próxima'
      tCounter : '%curr% de %total%'
    }


  $('#gallery').imagesLoaded(->
    $('#gallery').css('opacity', 1)
    $gallery = $('#gallery').masonry(
      columnWidth  : 12
      itemSelector : '.item'
    )

    $('#gallery').magnificPopup(default_options)
  )

