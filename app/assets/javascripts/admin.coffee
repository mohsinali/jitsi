Paloma.controller 'Admin', 
  index: ->
    $('.btnNewUser').click ->
      $('.newUserForm').removeClass('hide')
      $('.newUserAlertBox').addClass('hide')
      $('.newUserForm').trigger("reset")
    return
    
    