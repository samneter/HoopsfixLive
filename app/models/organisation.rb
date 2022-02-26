class Organisation < ApplicationRecord
  has_many :competitions
  has_one_attached :logo
  extend FriendlyId
  friendly_id :name, use: :slugged

  # def should_generate_new_friendly_id?
  #slug.blank? && name_changed?
  #end
end
