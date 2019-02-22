class InvitationsController < ApplicationController
  def create
    emails  = params[:invitation_form][:name].delete(' ').split(',')    
    room    = Room.find_by(id: params[:invitation_form][:room_id])

    emails.each do |email|
      UserMailer.invitation(email, room).deliver
    end

    respond_to do |format|
      format.js
    end
  end
end
