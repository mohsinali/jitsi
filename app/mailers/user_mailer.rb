class UserMailer < ApplicationMailer
  default from: "Attribe Solutions <info@attribes.com>"

  def invitation email, room, user
    @room = room
    @user = user
    mail(to: email, subject: "Invitation")
  end
end
