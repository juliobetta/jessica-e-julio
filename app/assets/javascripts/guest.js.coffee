$ ->
  $form = $('#confirmation').find('form')

  $('#confirmation').on('click', '.btn-success', (e)->
    $form.find(':submit').trigger('click')
  )