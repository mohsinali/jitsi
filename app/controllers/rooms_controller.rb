class RoomsController < ApplicationController
  def create
    @room = Room.new(room_params)
    @room.user_id = current_user.id

    respond_to do |format|
      if @room.save
        format.js
      else
        format.js
      end
    end
  end

  private
    def room_params
      params.fetch(:room, {}).permit(:name)
    end
end
