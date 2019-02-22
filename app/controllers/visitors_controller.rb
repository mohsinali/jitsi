class VisitorsController < ApplicationController
  def index
    @room = Room.new()
    @rooms = current_user.rooms
  end
end
