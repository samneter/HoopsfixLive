class Competition < ApplicationRecord
  belongs_to :organisation
  has_many :memberships
  has_many :games
  has_many :teams, through: :memberships
  has_one_attached :logo
  extend FriendlyId
  friendly_id :name, use: :slugged

  # def should_generate_new_friendly_id?
  #slug.blank? && name_changed?
  #end
end
