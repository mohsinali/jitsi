Paloma.controller 'Visitors', index: ->
  $('.btnNewRoom').click ->
    $('.newRoomFormContainer').removeClass('hide')
    $('.btnNewRoom').hide()
    $('.roomAlertBox').addClass('hide');
    $('#new_room').trigger("reset");

  return