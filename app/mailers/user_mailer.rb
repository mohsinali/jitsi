class UserMailer < ApplicationMailer
  def invitation email, room
    @room = room
    mail(to: email, subject: "Invitation")
  end
end
