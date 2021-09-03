class Stream < ApplicationRecord
  belongs_to :game, :dependent => :destroy
  before_validation on: :create do
    create_game
  end
end
