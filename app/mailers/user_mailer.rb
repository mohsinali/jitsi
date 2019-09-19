class UserMailer < ApplicationMailer
  default from: "Attribe Solutions <info@attribes.com>"

  def invitation email, room, user
    @room = room
    @user = user
    mail(to: email, subject: "Invitation")
  end

  def send_credentials user, password
    @user     = user
    @password = password

    mail(to: @user.email, subject: "Attribe: Log in credentials.")
  end
end
