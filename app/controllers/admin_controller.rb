class AdminController < ApplicationController
  before_action :authenticate_user!
  # before_action :authenticate_admin

  def index
    @users = User.all
  end
  
  ## Create new user
  def create
    name      = params[:new_user_form][:name]
    email     = params[:new_user_form][:email]
    password  = params[:new_user_form][:password]
    
    @user = User.new(name: name, email: email, password: password)
    @user.save

    respond_to do |format|
      format.js
    end

  end
end
