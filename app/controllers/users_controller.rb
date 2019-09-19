class UsersController < ApplicationController
  before_action :authenticate_user!
  # before_action :authenticate_admin

  def index
    # @users = User.all
    @users = User.with_role :user
  end

  def create

    respond_to do |format|
      format.js
    end
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_path, :alert => "Access denied."
    end
  end

end
