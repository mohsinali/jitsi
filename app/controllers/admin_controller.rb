class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin

  def index
    @users = User.with_role :user
  end
  
  ## Create new user
  def create
    name      = params[:new_user_form][:name]
    email     = params[:new_user_form][:email]
    password  = params[:new_user_form][:password]
    
    @user = User.invite!(name: name, email: email)
    # @user.save
    
    @user.add_role :user

    respond_to do |format|
      format.js
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    
    respond_to do |format|
      format.js
    end
  end

  private
    def authenticate_admin
      unless current_user.has_role? :admin
        redirect_to visitors_url(), alert: 'You are not allowed to access this section.'
      end
    end
end
