class Stream < ApplicationRecord
  belongs_to :game, dependent: :destroy
  accepts_nested_attributes_for :game
  before_validation on: :create do
    create_game
  end
end
