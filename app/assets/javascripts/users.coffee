Paloma.controller 'Users', 
  index: ->
    $('.btnNewUser').click ->
      $('.newUserForm').removeClass('hide')
    return