class VisitorsController < ApplicationController
  def index
    @room = Room.new()
  end
end
