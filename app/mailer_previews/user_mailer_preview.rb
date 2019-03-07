class UserMailerPreview
  def invitation
    UserMailer.invitation "mohsin@attribes.com", Room.last, User.first
  end
end
