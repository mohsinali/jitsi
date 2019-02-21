class Room < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  ## Associations
  belongs_to :user
end
