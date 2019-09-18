class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :confirmable, :validatable #, :encryptable


  ## Associations
  has_many :rooms, dependent: :destroy

  # # devise confirm! method overriden
  # def confirm!
  #   welcome_message
  #   super
  # end

  # # devise_invitable accept_invitation! method overriden
  # def accept_invitation!
  #   self.confirm!
  #   super
  # end

  # # devise_invitable invite! method overriden
  # def invite!
  #   super
  #   self.confirmed_at = nil
  #   self.save
  # end

  # private    

  #   def welcome_message
  #     UserMailer.welcome(self).deliver
  #   end
end
