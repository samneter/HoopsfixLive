class Stream < ApplicationRecord
  belongs_to :game, dependent: :destroy
  validates :stream_url, presence:true
  before_validation on: :create do
    create_game
  end
end
