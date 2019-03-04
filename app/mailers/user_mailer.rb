class UserMailer < ApplicationMailer
  default from: "Attribe Solutions <info@attribes.com>"

  def invitation email, room
    @room = room
    mail(to: email, subject: "Invitation")
  end
end
