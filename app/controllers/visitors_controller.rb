class VisitorsController < ApplicationController
  layout "landing", only: :home

  def index
    @room = Room.new()
    @rooms = current_user.rooms
  end

  def home
    puts "Home page."
  end

  def guest_login
    room_name = params[:guest_login][:room_name]
    guest_pin = params[:guest_login][:guest_pin]
    
    begin
      @room = Room.friendly.find(guest_pin)
    rescue Exception => e
      puts e.message      
    end

    respond_to do |format|
      format.js
    end

  end

end
