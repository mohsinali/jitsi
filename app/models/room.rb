class Room < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  before_save :remove_dashes

  ## Associations
  belongs_to :user

  def normalize_friendly_id(string)
    super.gsub("-", "")
  end

  private
    def remove_dashes
      self.slug = self.slug.gsub("-", "")
    end
end
